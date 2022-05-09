; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/stm32-dfsdm-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/stm32-dfsdm-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stm32_dfsdm_get_buff_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_stm32_dfsdm_get_buff_cb\09\09\09\09"
module asm "\09.long\09__crc_stm32_dfsdm_get_buff_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_dfsdm_get_buff_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_dfsdm_get_buff_cb\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_dfsdm_get_buff_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stm32_dfsdm_release_buff_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_stm32_dfsdm_release_buff_cb\09\09\09\09"
module asm "\09.long\09__crc_stm32_dfsdm_release_buff_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_dfsdm_release_buff_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_dfsdm_release_buff_cb\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_dfsdm_release_buff_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stm32_dfsdm_trig_info = type { ptr, i32 }
%struct.stm32_dfsdm_dev_data = type { i32, ptr, i32, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.stm32_dfsdm_str2field = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.stm32_dfsdm_adc = type { ptr, ptr, i32, i32, i32, i32, ptr, %struct.completion, ptr, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_dfsdm = type { ptr, i32, ptr, ptr, i32, ptr, i32, i32 }
%struct.stm32_dfsdm_filter = type { i32, [2 x %struct.stm32_dfsdm_filter_osr], i32, i32 }
%struct.stm32_dfsdm_filter_osr = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.70, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.70 = type { i8, i8, i8, i8, i8, i32 }
%struct.stm32_dfsdm_channel = type { i32, i32, i32, i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__kstrtab_stm32_dfsdm_get_buff_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_dfsdm_get_buff_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_dfsdm_get_buff_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_dfsdm_get_buff_cb to i32), ptr @__kstrtab_stm32_dfsdm_get_buff_cb, ptr @__kstrtabns_stm32_dfsdm_get_buff_cb }, section "___ksymtab_gpl+stm32_dfsdm_get_buff_cb", align 4
@__kstrtab_stm32_dfsdm_release_buff_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_dfsdm_release_buff_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_dfsdm_release_buff_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_dfsdm_release_buff_cb to i32), ptr @__kstrtab_stm32_dfsdm_release_buff_cb, ptr @__kstrtabns_stm32_dfsdm_release_buff_cb }, section "___ksymtab_gpl+stm32_dfsdm_release_buff_cb", align 4
@__initcall__kmod_stm32_dfsdm_adc__366_1680_stm32_dfsdm_adc_driver_init6 = internal global ptr @stm32_dfsdm_adc_driver_init, section ".initcall6.init", align 4
@stm32_dfsdm_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_dfsdm_adc_probe, ptr @stm32_dfsdm_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dfsdm_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_dfsdm_adc_driver_exit = internal global ptr @stm32_dfsdm_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description367 = internal constant [50 x i8] c"stm32_dfsdm_adc.description=STM32 sigma delta ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_author368 = internal constant [66 x i8] c"stm32_dfsdm_adc.author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file369 = internal constant [53 x i8] c"stm32_dfsdm_adc.file=drivers/iio/adc/stm32-dfsdm-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [31 x i8] c"stm32_dfsdm_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32-dfsdm-adc\00", [16 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dfsdm-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_dfsdm_adc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dfsdm-dmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_dfsdm_audio_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dfsdm_adc_suspend, ptr @stm32_dfsdm_adc_resume, ptr @stm32_dfsdm_adc_suspend, ptr @stm32_dfsdm_adc_resume, ptr @stm32_dfsdm_adc_suspend, ptr @stm32_dfsdm_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to allocate IIO\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_dfsdm_adc_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/adc/stm32-dfsdm-adc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry_ptr = internal global ptr @stm32_dfsdm_adc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing or bad reg property\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry_ptr.9 = internal global ptr @stm32_dfsdm_adc_probe._entry.7, section ".printk_index", align 4
@stm32_dfsdm_info_audio = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @stm32_dfsdm_read_raw, ptr null, ptr null, ptr @stm32_dfsdm_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_update_scan_mode, ptr null, ptr null, ptr @stm32_dfsdm_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfsdm-pdm%d\00", [20 x i8] zeroinitializer }, align 32
@stm32_dfsdm_info_adc = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @stm32_dfsdm_read_raw, ptr null, ptr null, ptr @stm32_dfsdm_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_validate_trigger, ptr @stm32_dfsdm_update_scan_mode, ptr null, ptr null, ptr @stm32_dfsdm_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfsdm-adc%d\00", [20 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry_ptr.14 = internal global ptr @stm32_dfsdm_adc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,filter-order\00", [16 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set filter order\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry_ptr.18 = internal global ptr @stm32_dfsdm_adc_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,filter0-sync\00", [16 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1607, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to find an audio DAI\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_probe._entry_ptr.22 = internal global ptr @stm32_dfsdm_adc_probe._entry.20, section ".printk_index", align 4
@stm32_dfsdm_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: IIO enable failed (channel %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_dfsdm_read_raw\00", [43 x i8] zeroinitializer }, align 32
@stm32_dfsdm_read_raw._entry_ptr = internal global ptr @stm32_dfsdm_read_raw._entry, section ".printk_index", align 4
@stm32_dfsdm_read_raw._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 1247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Conversion failed (channel %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_dfsdm_read_raw._entry_ptr.27 = internal global ptr @stm32_dfsdm_read_raw._entry.25, section ".printk_index", align 4
@stm32_dfsdm_channels_configure.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_dfsdm_adc\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stm32_dfsdm_channels_configure\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Samples actual resolution: %d bits\00", [61 x i8] zeroinitializer }, align 32
@stm32_dfsdm_trigs = internal constant { [13 x %struct.stm32_dfsdm_trig_info], [56 x i8] } { [13 x %struct.stm32_dfsdm_trig_info] [%struct.stm32_dfsdm_trig_info { ptr @.str.31, i32 0 }, %struct.stm32_dfsdm_trig_info { ptr @.str.32, i32 1 }, %struct.stm32_dfsdm_trig_info { ptr @.str.33, i32 2 }, %struct.stm32_dfsdm_trig_info { ptr @.str.34, i32 3 }, %struct.stm32_dfsdm_trig_info { ptr @.str.35, i32 4 }, %struct.stm32_dfsdm_trig_info { ptr @.str.36, i32 5 }, %struct.stm32_dfsdm_trig_info { ptr @.str.37, i32 6 }, %struct.stm32_dfsdm_trig_info { ptr @.str.38, i32 7 }, %struct.stm32_dfsdm_trig_info { ptr @.str.39, i32 8 }, %struct.stm32_dfsdm_trig_info { ptr @.str.40, i32 26 }, %struct.stm32_dfsdm_trig_info { ptr @.str.41, i32 27 }, %struct.stm32_dfsdm_trig_info { ptr @.str.42, i32 28 }, %struct.stm32_dfsdm_trig_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim1_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim1_trgo2\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim8_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim8_trgo2\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim3_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim4_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim16_oc1\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim6_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim7_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lptim1_out\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lptim2_out\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lptim3_out\00", [21 x i8] zeroinitializer }, align 32
@stm32_dfsdm_write_raw.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 1, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_dfsdm_write_raw\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Sampling rate changed from (%u) to (%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32_dfsdm_compute_all_osrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Filter parameters not found: errors %d/%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stm32_dfsdm_compute_all_osrs\00", [35 x i8] zeroinitializer }, align 32
@stm32_dfsdm_compute_all_osrs._entry_ptr = internal global ptr @stm32_dfsdm_compute_all_osrs._entry, section ".printk_index", align 4
@stm32_dfsdm_compute_osrs.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_dfsdm_compute_osrs\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Requested oversampling: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_dfsdm_compute_osrs.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.47, ptr @.str.3, ptr @.str.49, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"fast %d, fosr %d, iosr %d, res 0x%llx/%d bits, rshift %d, lshift %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dfsdm_adc_set_samp_freq.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dfsdm_adc_set_samp_freq\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Rate not accurate. requested (%u), actual (%u)\0A\00", [48 x i8] zeroinitializer }, align 32
@stm32_dfsdm_update_scan_mode.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stm32_dfsdm_update_scan_mode\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nconv=%d mask=%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_dfsdm_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1307, ptr @.str.56, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Overrun detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_dfsdm_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_dfsdm_irq._entry_ptr = internal global ptr @stm32_dfsdm_irq._entry, section ".printk_index", align 4
@stm32h7_dfsdm_adc_data = internal constant { %struct.stm32_dfsdm_dev_data, [16 x i8] } { %struct.stm32_dfsdm_dev_data { i32 1, ptr @stm32_dfsdm_adc_init, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@stm32h7_dfsdm_audio_data = internal constant { %struct.stm32_dfsdm_dev_data, [16 x i8] } { %struct.stm32_dfsdm_dev_data { i32 0, ptr @stm32_dfsdm_audio_init, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,adc-channels\00", [16 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad st,adc-channels\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_dfsdm_adc_init\00", [43 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_init._entry_ptr = internal global ptr @stm32_dfsdm_adc_init._entry, section ".printk_index", align 4
@stm32_dfsdm_adc_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 1467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Channels init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_init._entry_ptr.62 = internal global ptr @stm32_dfsdm_adc_init._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA channel request failed with\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_init.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.59, ptr @.str.3, ptr @.str.64, i8 1, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No DMA support\0A\00", [16 x i8] zeroinitializer }, align 32
@stm32_dfsdm_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @stm32_dfsdm_postenable, ptr @stm32_dfsdm_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.3, i32 1493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"buffer setup failed\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_dfsdm_adc_init._entry_ptr.67 = internal global ptr @stm32_dfsdm_adc_init._entry.65, section ".printk_index", align 4
@dfsdm_adc_audio_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.88, i32 1, ptr @dfsdm_adc_audio_get_spiclk, ptr @dfsdm_adc_audio_set_spiclk, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stm32_dfsdm_channel_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c" Error parsing 'st,adc-channels' for idx %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stm32_dfsdm_channel_parse_of\00", [35 x i8] zeroinitializer }, align 32
@stm32_dfsdm_channel_parse_of._entry_ptr = internal global ptr @stm32_dfsdm_channel_parse_of._entry, section ".printk_index", align 4
@stm32_dfsdm_channel_parse_of._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 619, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" Error bad channel number %d (max = %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32_dfsdm_channel_parse_of._entry_ptr.72 = internal global ptr @stm32_dfsdm_channel_parse_of._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,adc-channel-names\00", [43 x i8] zeroinitializer }, align 32
@stm32_dfsdm_channel_parse_of._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.69, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" Error parsing 'st,adc-channel-names' for idx %d\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_dfsdm_channel_parse_of._entry_ptr.76 = internal global ptr @stm32_dfsdm_channel_parse_of._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,adc-channel-types\00", [43 x i8] zeroinitializer }, align 32
@stm32_dfsdm_chan_type = internal constant { [5 x %struct.stm32_dfsdm_str2field], [56 x i8] } { [5 x %struct.stm32_dfsdm_str2field] [%struct.stm32_dfsdm_str2field { ptr @.str.80, i32 0 }, %struct.stm32_dfsdm_str2field { ptr @.str.81, i32 1 }, %struct.stm32_dfsdm_str2field { ptr @.str.82, i32 2 }, %struct.stm32_dfsdm_str2field { ptr @.str.83, i32 3 }, %struct.stm32_dfsdm_str2field zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st,adc-channel-clk-src\00", [41 x i8] zeroinitializer }, align 32
@stm32_dfsdm_chan_src = internal constant { [5 x %struct.stm32_dfsdm_str2field], [56 x i8] } { [5 x %struct.stm32_dfsdm_str2field] [%struct.stm32_dfsdm_str2field { ptr @.str.84, i32 0 }, %struct.stm32_dfsdm_str2field { ptr @.str.85, i32 1 }, %struct.stm32_dfsdm_str2field { ptr @.str.86, i32 2 }, %struct.stm32_dfsdm_str2field { ptr @.str.87, i32 3 }, %struct.stm32_dfsdm_str2field zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,adc-alt-channel\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPI_R\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPI_F\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MANCH_R\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MANCH_F\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLKIN\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLKOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLKOUT_F\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLKOUT_R\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_clk_freq\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@dfsdm_adc_audio_set_spiclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 714, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enter %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dfsdm_adc_audio_set_spiclk\00", [37 x i8] zeroinitializer }, align 32
@dfsdm_adc_audio_set_spiclk._entry_ptr = internal global ptr @dfsdm_adc_audio_set_spiclk._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@stm32_dfsdm_postenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Can't start DMA\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_dfsdm_postenable\00", [41 x i8] zeroinitializer }, align 32
@stm32_dfsdm_postenable._entry_ptr = internal global ptr @stm32_dfsdm_postenable._entry, section ".printk_index", align 4
@stm32_dfsdm_postenable._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 1028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't start conversion\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_dfsdm_postenable._entry_ptr.98 = internal global ptr @stm32_dfsdm_postenable._entry.96, section ".printk_index", align 4
@stm32_dfsdm_adc_dma_start.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.99, ptr @.str.3, ptr @.str.100, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_dfsdm_adc_dma_start\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"size=%d watermark=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_dfsdm_dma_buffer_done.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_dfsdm_dma_buffer_done\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pos = %d, available = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_dfsdm_audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.103, ptr @.str.3, i32 1419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_dfsdm_audio_init\00", [41 x i8] zeroinitializer }, align 32
@stm32_dfsdm_audio_init._entry_ptr = internal global ptr @stm32_dfsdm_audio_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 12, i64 25]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 25]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"stm32_dfsdm_adc_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1671, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1673, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"stm32_dfsdm_adc_match\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1513, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"stm32_dfsdm_adc_pm_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1668, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1538, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1550, i32 43 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1552, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [23 x i8] c"stm32_dfsdm_info_audio\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1274, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1561, i32 40 }
@___asan_gen_.152 = private unnamed_addr constant [21 x i8] c"stm32_dfsdm_info_adc\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1281, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1564, i32 40 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1579, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1583, i32 43 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1585, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1591, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1607, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1236, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1245, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 480, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [18 x i8] c"stm32_dfsdm_trigs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 154, i32 43 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 155, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 156, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 157, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 158, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 159, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 160, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 161, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 162, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 163, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 164, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 165, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 166, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1197, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 325, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 201, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 298, i32 5 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 689, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 997, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1307, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [23 x i8] c"stm32h7_dfsdm_adc_data\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1503, i32 42 }
@___asan_gen_.296 = private unnamed_addr constant [25 x i8] c"stm32h7_dfsdm_audio_data\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1508, i32 42 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1447, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1449, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1467, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1482, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1484, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [29 x i8] c"stm32_dfsdm_buffer_setup_ops\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1061, i32 42 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1493, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [25 x i8] c"dfsdm_adc_audio_ext_info\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1320, i32 44 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 611, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 617, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 624, i32 10 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 627, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 637, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant [22 x i8] c"stm32_dfsdm_chan_type\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 103, i32 43 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 649, i32 10 }
@___asan_gen_.368 = private unnamed_addr constant [21 x i8] c"stm32_dfsdm_chan_src\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 112, i32 43 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 661, i32 7 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 104, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 105, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 106, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 107, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 114, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 116, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 118, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 120, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1323, i32 11 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 676, i32 34 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 714, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 87, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1348, i32 40 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1022, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1028, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 921, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 867, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.453 = private constant [37 x i8] c"../drivers/iio/adc/stm32-dfsdm-adc.c\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1419, i32 3 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_description367, ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__exitcall_stm32_dfsdm_adc_driver_exit, ptr @__initcall__kmod_stm32_dfsdm_adc__366_1680_stm32_dfsdm_adc_driver_init6, ptr @__ksymtab_stm32_dfsdm_get_buff_cb, ptr @__ksymtab_stm32_dfsdm_release_buff_cb, ptr @dfsdm_adc_audio_set_spiclk._entry, ptr @dfsdm_adc_audio_set_spiclk._entry_ptr, ptr @stm32_dfsdm_adc_driver_exit, ptr @stm32_dfsdm_adc_init._entry, ptr @stm32_dfsdm_adc_init._entry.60, ptr @stm32_dfsdm_adc_init._entry.65, ptr @stm32_dfsdm_adc_init._entry_ptr, ptr @stm32_dfsdm_adc_init._entry_ptr.62, ptr @stm32_dfsdm_adc_init._entry_ptr.67, ptr @stm32_dfsdm_adc_probe._entry, ptr @stm32_dfsdm_adc_probe._entry.12, ptr @stm32_dfsdm_adc_probe._entry.16, ptr @stm32_dfsdm_adc_probe._entry.20, ptr @stm32_dfsdm_adc_probe._entry.7, ptr @stm32_dfsdm_adc_probe._entry_ptr, ptr @stm32_dfsdm_adc_probe._entry_ptr.14, ptr @stm32_dfsdm_adc_probe._entry_ptr.18, ptr @stm32_dfsdm_adc_probe._entry_ptr.22, ptr @stm32_dfsdm_adc_probe._entry_ptr.9, ptr @stm32_dfsdm_audio_init._entry, ptr @stm32_dfsdm_audio_init._entry_ptr, ptr @stm32_dfsdm_channel_parse_of._entry, ptr @stm32_dfsdm_channel_parse_of._entry.70, ptr @stm32_dfsdm_channel_parse_of._entry.74, ptr @stm32_dfsdm_channel_parse_of._entry_ptr, ptr @stm32_dfsdm_channel_parse_of._entry_ptr.72, ptr @stm32_dfsdm_channel_parse_of._entry_ptr.76, ptr @stm32_dfsdm_compute_all_osrs._entry, ptr @stm32_dfsdm_compute_all_osrs._entry_ptr, ptr @stm32_dfsdm_irq._entry, ptr @stm32_dfsdm_irq._entry_ptr, ptr @stm32_dfsdm_postenable._entry, ptr @stm32_dfsdm_postenable._entry.96, ptr @stm32_dfsdm_postenable._entry_ptr, ptr @stm32_dfsdm_postenable._entry_ptr.98, ptr @stm32_dfsdm_read_raw._entry, ptr @stm32_dfsdm_read_raw._entry.25, ptr @stm32_dfsdm_read_raw._entry_ptr, ptr @stm32_dfsdm_read_raw._entry_ptr.27, ptr @stm32_dfsdm_adc_driver, ptr @.str, ptr @stm32_dfsdm_adc_match, ptr @stm32_dfsdm_adc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @stm32_dfsdm_info_audio, ptr @.str.10, ptr @stm32_dfsdm_info_adc, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @stm32_dfsdm_trigs, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @stm32h7_dfsdm_adc_data, ptr @stm32h7_dfsdm_audio_data, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @stm32_dfsdm_buffer_setup_ops, ptr @.str.66, ptr @dfsdm_adc_audio_ext_info, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @stm32_dfsdm_chan_type, ptr @.str.78, ptr @stm32_dfsdm_chan_src, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @init_completion.__key, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_info_audio to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_info_adc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_read_raw._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_trigs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_compute_all_osrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_dfsdm_adc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_dfsdm_audio_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_adc_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfsdm_adc_audio_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_channel_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_channel_parse_of._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_channel_parse_of._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_chan_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_chan_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfsdm_adc_audio_set_spiclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_postenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_postenable._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @stm32_dfsdm_get_buff_cb(ptr noundef readonly %iio_dev, ptr noundef %cb, ptr noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iio_dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cb1 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cb1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %cb1, align 4
  %cb_priv = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %cb_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %private, ptr %cb_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @stm32_dfsdm_release_buff_cb(ptr noundef readonly %iio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iio_dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cb = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cb, align 4
  %cb_priv = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %cb_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cb_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dfsdm_adc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dfsdm_adc_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dfsdm_adc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !243
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 124) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %4, align 4
  %of_node6 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2, i32 27
  %10 = ptrtoint ptr %of_node6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %of_node6, align 8
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %fl_id = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef %fl_id, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.not = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fl_id, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %num_fls = getelementptr inbounds %struct.stm32_dfsdm, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %num_fls to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_fls, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp11.not = icmp ult i32 %16, %20
  br i1 %cmp11.not, label %if.end16, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 11, i32 noundef 3520) #10
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp21 = icmp eq i32 %22, 0
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %stm32_dfsdm_info_audio.stm32_dfsdm_info_adc = select i1 %cmp21, ptr @stm32_dfsdm_info_audio, ptr @stm32_dfsdm_info_adc
  %.str.10..str.11 = select i1 %cmp21, ptr @.str.10, ptr @.str.11
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %stm32_dfsdm_info_audio.stm32_dfsdm_info_adc, ptr %info, align 8
  %24 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fl_id, align 4
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 11, ptr noundef nonnull %.str.10..str.11, i32 noundef %25)
  %name29 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %26 = ptrtoint ptr %name29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %name29, align 8
  %call30 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end20.cleanup_crit_edge, label %if.end33

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end20
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %call.i148 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call30, ptr noundef nonnull @stm32_dfsdm_irq, ptr noundef null, i32 noundef 0, ptr noundef %28, ptr noundef nonnull %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp36 = icmp slt i32 %call.i148, 0
  br i1 %cmp36, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call.i.i149 = call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.15, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp44 = icmp slt i32 %call.i.i149, 0
  br i1 %cmp44, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 4
  %fl_list = getelementptr inbounds %struct.stm32_dfsdm, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %fl_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fl_list, align 4
  %37 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fl_id, align 4
  %arrayidx = getelementptr %struct.stm32_dfsdm_filter, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %32, ptr %arrayidx, align 8
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %call.i.i150 = call i32 @of_property_read_variable_u32_array(ptr noundef %41, ptr noundef nonnull @.str.19, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i150)
  %tobool54.not = icmp sgt i32 %call.i.i150, -1
  br i1 %tobool54.not, label %if.then55, label %if.end49.if.end60_crit_edge

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  %fl_list57 = getelementptr inbounds %struct.stm32_dfsdm, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %fl_list57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fl_list57, align 4
  %48 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fl_id, align 4
  %sync_mode = getelementptr %struct.stm32_dfsdm_filter, ptr %47, i32 %49, i32 2
  %50 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %43, ptr %sync_mode, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end49.if.end60_crit_edge
  %dev_data61 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 1
  %51 = ptrtoint ptr %dev_data61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call, ptr %dev_data61, align 4
  %init = getelementptr inbounds %struct.stm32_dfsdm_dev_data, ptr %call, i32 0, i32 1
  %52 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init, align 4
  %call62 = call i32 %53(ptr noundef %dev1, ptr noundef nonnull %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end60.cleanup_crit_edge, label %if.end65

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %call66 = call i32 @__iio_device_register(ptr noundef nonnull %call2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.err_cleanup_crit_edge, label %if.end69

if.end65.err_cleanup_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cleanup

if.end69:                                         ; preds = %if.end65
  %54 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp71 = icmp eq i32 %55, 0
  br i1 %cmp71, label %if.then72, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %if.end69
  %call73 = call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end78, label %if.then72.cleanup_crit_edge

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end78:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #13
  call void @iio_device_unregister(ptr noundef nonnull %call2) #10
  br label %err_cleanup

err_cleanup:                                      ; preds = %do.end78, %if.end65.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call66, %if.end65.err_cleanup_crit_edge ], [ %call73, %do.end78 ]
  %56 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i, align 8
  %dma_chan.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %err_cleanup.cleanup_crit_edge, label %if.then.i

err_cleanup.cleanup_crit_edge:                    ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %57, i32 0, i32 13
  %64 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_buf.i, align 4
  %dma_buf.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %57, i32 0, i32 17
  %66 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_buf.i, align 4
  call void @dma_free_attrs(ptr noundef %63, i32 noundef 16384, ptr noundef %65, i32 noundef %67, i32 noundef 0) #10
  %68 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_chan.i, align 4
  call void @dma_release_channel(ptr noundef %69) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err_cleanup.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %do.end48, %do.end40, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end15 ], [ %call.i148, %do.end40 ], [ %call.i.i149, %do.end48 ], [ -12, %do.end ], [ -12, %if.end16.cleanup_crit_edge ], [ %call30, %if.end20.cleanup_crit_edge ], [ %call62, %if.end60.cleanup_crit_edge ], [ 0, %if.then72.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ], [ %ret.0, %err_cleanup.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dev_data = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @iio_device_unregister(ptr noundef %1) #10
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %dma_chan.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.stm32_dfsdm_dma_release.exit_crit_edge, label %if.then.i

if.end.stm32_dfsdm_dma_release.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_dma_release.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %9, i32 0, i32 13
  %16 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_buf.i, align 4
  %dma_buf.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %9, i32 0, i32 17
  %18 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef 16384, ptr noundef %17, i32 noundef %19, i32 noundef 0) #10
  %20 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_chan.i, align 4
  tail call void @dma_release_channel(ptr noundef %21) #10
  br label %stm32_dfsdm_dma_release.exit

stm32_dfsdm_dma_release.exit:                     ; preds = %if.then.i, %if.end.stm32_dfsdm_dma_release.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_irq(i32 noundef %irq, ptr noundef %arg) #4 align 64 {
entry:
  %status = alloca i32, align 4
  %int_en = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %arg, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap1 = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_en) #10
  %7 = ptrtoint ptr %int_en to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %int_en, align 4, !annotation !243
  %fl_id = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_id, align 4
  %mul = shl i32 %9, 7
  %add2 = add i32 %mul, 264
  %call3 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add2, ptr noundef nonnull %status) #10
  %10 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fl_id, align 4
  %mul5 = shl i32 %11, 7
  %add7 = add i32 %mul5, 260
  %call8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add7, ptr noundef nonnull %int_en) #10
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fl_id, align 4
  %mul10 = shl i32 %15, 7
  %add12 = add i32 %mul10, 284
  %buffer = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %call13 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add12, ptr noundef %17) #10
  %completion = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 7
  call void @complete(ptr noundef %completion) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %and14 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end26_crit_edge, label %if.then16

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then16:                                        ; preds = %if.end
  %20 = ptrtoint ptr %int_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %int_en, align 4
  %and17 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then16.if.end20_crit_edge, label %do.end

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %arg, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.54) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then16.if.end20_crit_edge
  %22 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fl_id, align 4
  %mul22 = shl i32 %23, 7
  %add24 = add i32 %mul22, 268
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add24, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end20, %if.end.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_en) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_dfsdm_dma_release(ptr nocapture noundef readonly %indio_dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dma_chan = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %rx_buf = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf, align 4
  %dma_buf = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_buf, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 16384, ptr noundef %9, i32 noundef %11, i32 noundef 0) #10
  %12 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 25, label %sw.bb15
    i32 12, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %hwc = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwc, align 4
  %call2 = tail call i32 @iio_hw_consumer_enable(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %6) #13
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %completion.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %completion.i, align 4
  %buffer.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %8, i32 0, i32 8
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %val, ptr %buffer.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %call1.i = tail call i32 @stm32_dfsdm_start_dfsdm(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %stm32_dfsdm_single_conv.exit.thread, label %if.end.i

stm32_dfsdm_single_conv.exit.thread:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwc, align 4
  tail call void @iio_hw_consumer_disable(ptr noundef %14) #10
  br label %do.end11

if.end.i:                                         ; preds = %if.end4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 4
  %regmap.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %fl_id.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fl_id.i, align 4
  %mul.i = shl i32 %20, 7
  %add3.i = add i32 %mul.i, 260
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %add3.i, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp17.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp17.i, label %if.end.i.stm32_dfsdm_single_conv.exit_crit_edge, label %if.end19.i

if.end.i.stm32_dfsdm_single_conv.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_single_conv.exit

if.end19.i:                                       ; preds = %if.end.i
  %nconv.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %8, i32 0, i32 3
  %21 = ptrtoint ptr %nconv.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %nconv.i, align 4
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %22 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_index.i, align 4
  %shl.i = shl nuw i32 1, %23
  %smask.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %8, i32 0, i32 4
  %24 = ptrtoint ptr %smask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl.i, ptr %smask.i, align 4
  %call20.i = tail call fastcc i32 @stm32_dfsdm_start_conv(ptr noundef %indio_dev, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.then22.i, label %if.end46.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 4
  %regmap24.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %regmap24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap24.i, align 4
  %29 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fl_id.i, align 4
  %mul26.i = shl i32 %30, 7
  %add28.i = add i32 %mul26.i, 260
  %call.i106.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add28.i, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %stm32_dfsdm_single_conv.exit

if.end46.i:                                       ; preds = %if.end19.i
  %call49.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion.i, i32 noundef 10) #10
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %8, align 4
  %regmap51.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %regmap51.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap51.i, align 4
  %35 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fl_id.i, align 4
  %mul53.i = shl i32 %36, 7
  %add55.i = add i32 %mul53.i, 260
  %call.i107.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %add55.i, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp73.i = icmp eq i32 %call49.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp75.i = icmp slt i32 %call49.i, 0
  %call49..i = select i1 %cmp75.i, i32 %call49.i, i32 1
  %ret.0.i = select i1 %cmp73.i, i32 -110, i32 %call49..i
  tail call fastcc void @stm32_dfsdm_stop_conv(ptr noundef %indio_dev) #10
  %37 = ptrtoint ptr %nconv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nconv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not12.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not12.i.i, label %if.end46.i.stm32_dfsdm_single_conv.exit_crit_edge, label %while.body.lr.ph.i.i

if.end46.i.stm32_dfsdm_single_conv.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_single_conv.exit

while.body.lr.ph.i.i:                             ; preds = %if.end46.i
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %8, align 4
  %fl_list.i.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %fl_list.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fl_list.i.i, align 4
  %43 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fl_id.i, align 4
  %fast.i.i = getelementptr %struct.stm32_dfsdm_filter, ptr %42, i32 %44, i32 3
  %45 = ptrtoint ptr %fast.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fast.i.i, align 4
  %max.i.i = getelementptr %struct.stm32_dfsdm_filter, ptr %42, i32 %44, i32 1, i32 %46, i32 6
  %lshift.i.i = getelementptr %struct.stm32_dfsdm_filter, ptr %42, i32 %44, i32 1, i32 %46, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %dec14.in.i.i = phi i32 [ %38, %while.body.lr.ph.i.i ], [ %dec14.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %ptr.013.i.i = phi ptr [ %val, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %dec14.i.i = add i32 %dec14.in.i.i, -1
  %47 = ptrtoint ptr %ptr.013.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ptr.013.i.i, align 4
  %and.i.i = and i32 %48, -256
  store i32 %and.i.i, ptr %ptr.013.i.i, align 4
  %49 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %50)
  %cmp.i.i = icmp sgt i32 %and.i.i, %50
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %and.i.i, -1
  %51 = ptrtoint ptr %ptr.013.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i.i, ptr %ptr.013.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %52 = ptrtoint ptr %lshift.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lshift.i.i, align 4
  %54 = ptrtoint ptr %ptr.013.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ptr.013.i.i, align 4
  %shl.i.i = shl i32 %55, %53
  store i32 %shl.i.i, ptr %ptr.013.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %ptr.013.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec14.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.stm32_dfsdm_single_conv.exit_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.stm32_dfsdm_single_conv.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_single_conv.exit

stm32_dfsdm_single_conv.exit:                     ; preds = %if.end.i.i.stm32_dfsdm_single_conv.exit_crit_edge, %if.end46.i.stm32_dfsdm_single_conv.exit_crit_edge, %if.then22.i, %if.end.i.stm32_dfsdm_single_conv.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i.i, %if.end.i.stm32_dfsdm_single_conv.exit_crit_edge ], [ %call20.i, %if.then22.i ], [ %ret.0.i, %if.end46.i.stm32_dfsdm_single_conv.exit_crit_edge ], [ %ret.0.i, %if.end.i.i.stm32_dfsdm_single_conv.exit_crit_edge ]
  %56 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %8, align 4
  %call81.i = tail call i32 @stm32_dfsdm_stop_dfsdm(ptr noundef %57) #10
  %58 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hwc, align 4
  tail call void @iio_hw_consumer_disable(ptr noundef %59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp7 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp7, label %stm32_dfsdm_single_conv.exit.do.end11_crit_edge, label %if.end14

stm32_dfsdm_single_conv.exit.do.end11_crit_edge:  ; preds = %stm32_dfsdm_single_conv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.end11:                                         ; preds = %stm32_dfsdm_single_conv.exit.do.end11_crit_edge, %stm32_dfsdm_single_conv.exit.thread
  %retval.0.i39 = phi i32 [ %call1.i, %stm32_dfsdm_single_conv.exit.thread ], [ %ret.1.i, %stm32_dfsdm_single_conv.exit.do.end11_crit_edge ]
  %dev12 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %channel13 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %60 = ptrtoint ptr %channel13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channel13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %61) #13
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #10
  br label %cleanup

if.end14:                                         ; preds = %stm32_dfsdm_single_conv.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #10
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %oversamp = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %oversamp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %oversamp, align 4
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sample_freq = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 10
  %65 = ptrtoint ptr %sample_freq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sample_freq, align 4
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb15, %if.end14, %do.end11, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb16 ], [ 1, %sw.bb15 ], [ %call2, %do.end ], [ %retval.0.i39, %do.end11 ], [ 1, %if.end14 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ch_list = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ch_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_list, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %src = getelementptr %struct.stm32_dfsdm_channel, ptr %5, i32 %7, i32 2
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge67
  ]

entry.sw.bb2_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spi_master_freq = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %spi_master_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spi_master_freq, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge67
  %spi_master_freq4 = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %spi_master_freq4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spi_master_freq4, align 4
  %div60 = lshr i32 %14, 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spi_freq5 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %spi_freq5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spi_freq5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %spi_freq.0 = phi i32 [ %16, %sw.default ], [ %div60, %sw.bb2 ], [ %12, %sw.bb ]
  %17 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %mask, label %sw.epilog.cleanup_crit_edge [
    i32 25, label %sw.bb6
    i32 12, label %sw.bb21
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb6:                                           ; preds = %sw.epilog
  %call7 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb6
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %fl_list.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %fl_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fl_list.i, align 4
  %fl_id.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fl_id.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_dfsdm_filter, ptr %23, i32 %25
  %flo.i = getelementptr %struct.stm32_dfsdm_filter, ptr %23, i32 %25, i32 1
  %26 = call ptr @memset(ptr %flo.i, i32 0, i32 64)
  %call4.i = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef %val) #10
  %call5.i = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %stm32_dfsdm_compute_all_osrs.exit, label %do.body

stm32_dfsdm_compute_all_osrs.exit:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %call4.i, i32 noundef %call5.i) #13
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_write_raw.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_write_raw, %if.then15)) #10
          to label %do.end [label %if.then15], !srcloc !244

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %sample_freq = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %sample_freq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sample_freq, align 4
  %div16 = udiv i32 %spi_freq.0, %val
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dfsdm_write_raw.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %28, i32 noundef %div16) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %oversamp = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %oversamp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %val, ptr %oversamp, align 4
  %div18 = udiv i32 %spi_freq.0, %val
  %sample_freq19 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %sample_freq19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div18, ptr %sample_freq19, align 4
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool22.not = icmp eq i32 %val, 0
  br i1 %tobool22.not, label %sw.bb21.cleanup_crit_edge, label %if.end24

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %sw.bb21
  %call25 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call fastcc i32 @dfsdm_adc_set_samp_freq(ptr noundef %indio_dev, i32 noundef %val, i32 noundef %spi_freq.0)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end28, %do.end, %stm32_dfsdm_compute_all_osrs.exit
  %retval.0.ph = phi i32 [ %call29, %if.end28 ], [ 0, %do.end ], [ -22, %stm32_dfsdm_compute_all_osrs.exit ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb21.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_update_scan_mode(ptr noundef %indio_dev, ptr noundef %scan_mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %2 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %masklength, align 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %scan_mask, i32 noundef %3) #10
  %nconv = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %nconv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4.i, ptr %nconv, align 4
  %5 = ptrtoint ptr %scan_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_mask, align 4
  %smask = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %smask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %smask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_update_scan_mode.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_update_scan_mode, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %8 = ptrtoint ptr %nconv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nconv, align 4
  %10 = ptrtoint ptr %scan_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dfsdm_update_scan_mode.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %9, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_dfsdm_set_watermark(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mul = shl i32 %val, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %mul)
  %cmp = icmp ugt i32 %mul, 8192
  %phi.bo = shl i32 %val, 3
  %cond = select i1 %cmp, i32 16384, i32 %phi.bo
  %nconv = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nconv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nconv, align 4
  %mul2 = mul i32 %3, %cond
  %4 = tail call i32 @llvm.umin.i32(i32 %mul2, i32 16384)
  %buf_sz = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %buf_sz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buf_sz, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_hw_consumer_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_hw_consumer_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_dfsdm_start_dfsdm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_start_conv(ptr noundef %indio_dev, ptr noundef %trig) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap1 = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %fl_id = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fl_id, align 4
  %call2 = tail call fastcc i32 @stm32_dfsdm_channels_configure(ptr noundef %indio_dev, i32 noundef %7, ptr noundef %trig)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %regmap1.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap1.i, align 4
  %smask.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %9, i32 0, i32 4
  %call2.i = tail call i32 @_find_next_bit_be(ptr noundef %smask.i, i32 noundef 32, i32 noundef 0) #10
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i)
  %cmp30.i = icmp ult i32 %call2.i, 32
  br i1 %cmp30.i, label %if.end.for.body.i_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %bit.031.i = phi i32 [ %call19.i, %for.inc.i.for.body.i_crit_edge ], [ %call2.i, %if.end.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels.i, align 8
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %15, i32 %bit.031.i, i32 1
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel.i, align 4
  %mul.i = shl i32 %17, 5
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %mul.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp16.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp16.i, label %for.body.i.cleanup_crit_edge, label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %add18.i = add nuw nsw i32 %bit.031.i, 1
  %call19.i = tail call i32 @_find_next_bit_be(ptr noundef %smask.i, i32 noundef 32, i32 noundef %add18.i) #10
  %cmp.i = icmp ult i32 %call19.i, 32
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end6_crit_edge

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end6:                                          ; preds = %for.inc.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %18 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fl_id, align 4
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %regmap1.i40 = getelementptr inbounds %struct.stm32_dfsdm, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %regmap1.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap1.i40, align 4
  %fl_list.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %fl_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fl_list.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_dfsdm_filter, ptr %27, i32 %19
  %fast.i = getelementptr %struct.stm32_dfsdm_filter, ptr %27, i32 %19, i32 3
  %28 = ptrtoint ptr %fast.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fast.i, align 4
  %mul.i41 = shl i32 %19, 7
  %add.i = add i32 %mul.i41, 256
  %add5.i = add i32 %mul.i41, 276
  %arrayidx4.i = getelementptr %struct.stm32_dfsdm_filter, ptr %27, i32 %19, i32 1, i32 %29
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i, align 8
  %sub21.i = add i32 %31, 255
  %and22.i = and i32 %sub21.i, 255
  %call.i.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add5.i, i32 noundef 255, i32 noundef %and22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %tobool24.not.i = icmp eq i32 %call.i.i42, 0
  br i1 %tobool24.not.i, label %do.end53.i, label %if.end6.stm32_dfsdm_filter_configure.exit_crit_edge

if.end6.stm32_dfsdm_filter_configure.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_filter_configure.exit

do.end53.i:                                       ; preds = %if.end6
  %fosr.i = getelementptr %struct.stm32_dfsdm_filter, ptr %27, i32 %19, i32 1, i32 %29, i32 1
  %32 = ptrtoint ptr %fosr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fosr.i, align 4
  %sub56.i = shl i32 %33, 16
  %shl57.i = add i32 %sub56.i, 67043328
  %and58.i = and i32 %shl57.i, 67043328
  %call.i387.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add5.i, i32 noundef 67043328, i32 noundef %and58.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i387.i)
  %tobool60.not.i = icmp eq i32 %call.i387.i, 0
  br i1 %tobool60.not.i, label %do.end87.i, label %do.end53.i.stm32_dfsdm_filter_configure.exit_crit_edge

do.end53.i.stm32_dfsdm_filter_configure.exit_crit_edge: ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_filter_configure.exit

do.end87.i:                                       ; preds = %do.end53.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 8
  %shl90.i = shl i32 %35, 29
  %call.i388.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add5.i, i32 noundef -536870912, i32 noundef %shl90.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388.i)
  %tobool93.not.i = icmp eq i32 %call.i388.i, 0
  br i1 %tobool93.not.i, label %if.end95.i, label %do.end87.i.stm32_dfsdm_filter_configure.exit_crit_edge

do.end87.i.stm32_dfsdm_filter_configure.exit_crit_edge: ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_filter_configure.exit

if.end95.i:                                       ; preds = %do.end87.i
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %regmap1.i.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %regmap1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %trig, null
  br i1 %tobool.not.i.i, label %if.end95.i.stm32_dfsdm_filter_set_trig.exit.i_crit_edge, label %if.then.i.i

if.end95.i.stm32_dfsdm_filter_set_trig.exit.i_crit_edge: ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_filter_set_trig.exit.i

if.then.i.i:                                      ; preds = %if.end95.i
  %name4.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i
  %42 = phi ptr [ @.str.31, %if.then.i.i ], [ %46, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %i.02.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @is_stm32_timer_trigger(ptr noundef nonnull %trig) #10
  br i1 %call.i.i.i, label %for.body.i.i.i.land.lhs.true.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.i.land.lhs.true.i.i.i_crit_edge:     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i.i
  %call1.i.i.i = tail call zeroext i1 @is_stm32_lptim_trigger(ptr noundef nonnull %trig) #10
  br i1 %call1.i.i.i, label %lor.lhs.false.i.i.i.land.lhs.true.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

lor.lhs.false.i.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i.land.lhs.true.i.i.i_crit_edge, %for.body.i.i.i.land.lhs.true.i.i.i_crit_edge
  %43 = ptrtoint ptr %name4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name4.i.i.i, align 4
  %call5.i.i.i = tail call i32 @strcmp(ptr noundef nonnull %42, ptr noundef %44) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %stm32_dfsdm_get_jextsel.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [13 x %struct.stm32_dfsdm_trig_info], ptr @stm32_dfsdm_trigs, i32 0, i32 %inc.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %exitcond.i.i.i = icmp eq i32 %inc.i.i.i, 12
  br i1 %exitcond.i.i.i, label %for.inc.i.i.i.stop_channels_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.stop_channels_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_channels

stm32_dfsdm_get_jextsel.exit.i.i:                 ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %jextsel.i.i.i = getelementptr [13 x %struct.stm32_dfsdm_trig_info], ptr @stm32_dfsdm_trigs, i32 0, i32 %i.02.i.i.i, i32 1
  %47 = ptrtoint ptr %jextsel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %jextsel.i.i.i, align 4
  %phi.bo = shl i32 %48, 8
  %phi.bo91 = and i32 %phi.bo, 7936
  %49 = or i32 %phi.bo91, 8192
  br label %stm32_dfsdm_filter_set_trig.exit.i

stm32_dfsdm_filter_set_trig.exit.i:               ; preds = %stm32_dfsdm_get_jextsel.exit.i.i, %if.end95.i.stm32_dfsdm_filter_set_trig.exit.i_crit_edge
  %or.i.i = phi i32 [ %49, %stm32_dfsdm_get_jextsel.exit.i.i ], [ 0, %if.end95.i.stm32_dfsdm_filter_set_trig.exit.i_crit_edge ]
  %call.i64.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %add.i, i32 noundef 32512, i32 noundef %or.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %50 = tail call i32 @llvm.smin.i32(i32 %call.i64.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i64.i.i)
  %tobool97.not.i = icmp sgt i32 %call.i64.i.i, -1
  br i1 %tobool97.not.i, label %do.end125.i, label %stm32_dfsdm_filter_set_trig.exit.i.stm32_dfsdm_filter_configure.exit_crit_edge

stm32_dfsdm_filter_set_trig.exit.i.stm32_dfsdm_filter_configure.exit_crit_edge: ; preds = %stm32_dfsdm_filter_set_trig.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_filter_configure.exit

do.end125.i:                                      ; preds = %stm32_dfsdm_filter_set_trig.exit.i
  %51 = ptrtoint ptr %fast.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fast.i, align 4
  %shl128.i = shl i32 %52, 29
  %and129.i = and i32 %shl128.i, 536870912
  %call.i389.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add.i, i32 noundef 536870912, i32 noundef %and129.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i389.i)
  %tobool131.not.i = icmp eq i32 %call.i389.i, 0
  br i1 %tobool131.not.i, label %if.end133.i, label %do.end125.i.stm32_dfsdm_filter_configure.exit_crit_edge

do.end125.i.stm32_dfsdm_filter_configure.exit_crit_edge: ; preds = %do.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_filter_configure.exit

if.end133.i:                                      ; preds = %do.end125.i
  %nconv.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %21, i32 0, i32 3
  %53 = ptrtoint ptr %nconv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nconv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i43 = icmp eq i32 %54, 1
  %or.cond379.i = and i1 %tobool.not.i.i, %cmp.i43
  %smask.i44 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %21, i32 0, i32 4
  br i1 %or.cond379.i, label %if.then135.i, label %if.else.i

if.then135.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %smask.i44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %smask.i44, align 4
  %57 = tail call i32 @llvm.cttz.i32(i32 %56, i1 false) #10, !range !245
  %58 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channels.i, align 8
  %channel.i46 = getelementptr %struct.iio_chan_spec, ptr %59, i32 %57, i32 1
  %60 = ptrtoint ptr %channel.i46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channel.i46, align 4
  %sync_mode.i = getelementptr %struct.stm32_dfsdm_filter, ptr %27, i32 %19, i32 2
  %62 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sync_mode.i, align 8
  %shl161.i = shl i32 %61, 24
  %and162.i = and i32 %shl161.i, 117440512
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %64 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %currentmode.i, align 4
  %and163.i = shl i32 %65, 16
  %66 = and i32 %and163.i, 262144
  %shl207.i = shl i32 %63, 19
  %and208.i = and i32 %shl207.i, 524288
  %67 = or i32 %and208.i, %and162.i
  %or209.i = or i32 %67, %66
  br label %if.end294.i

if.else.i:                                        ; preds = %if.end133.i
  %call211.i = tail call i32 @_find_next_bit_be(ptr noundef %smask.i44, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call211.i)
  %cmp212394.i = icmp ult i32 %call211.i, 32
  br i1 %cmp212394.i, label %if.else.i.for.body.i47_crit_edge, label %if.else.i.for.end.i_crit_edge

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.else.i.for.body.i47_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.body.i47.for.body.i47_crit_edge, %if.else.i.for.body.i47_crit_edge
  %bit.0396.i = phi i32 [ %call220.i, %for.body.i47.for.body.i47_crit_edge ], [ %call211.i, %if.else.i.for.body.i47_crit_edge ]
  %jchg.0395.i = phi i32 [ %or217.i, %for.body.i47.for.body.i47_crit_edge ], [ 0, %if.else.i.for.body.i47_crit_edge ]
  %68 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %channels.i, align 8
  %channel215.i = getelementptr %struct.iio_chan_spec, ptr %69, i32 %bit.0396.i, i32 1
  %70 = ptrtoint ptr %channel215.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channel215.i, align 4
  %shl216.i = shl nuw i32 1, %71
  %or217.i = or i32 %shl216.i, %jchg.0395.i
  %add219.i = add nuw nsw i32 %bit.0396.i, 1
  %call220.i = tail call i32 @_find_next_bit_be(ptr noundef %smask.i44, i32 noundef 32, i32 noundef %add219.i) #10
  %cmp212.i = icmp ult i32 %call220.i, 32
  br i1 %cmp212.i, label %for.body.i47.for.body.i47_crit_edge, label %for.body.i47.for.end.i_crit_edge

for.body.i47.for.end.i_crit_edge:                 ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i47.for.body.i47_crit_edge:              ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i47

for.end.i:                                        ; preds = %for.body.i47.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %jchg.0.lcssa.i = phi i32 [ 0, %if.else.i.for.end.i_crit_edge ], [ %or217.i, %for.body.i47.for.end.i_crit_edge ]
  %add223.i = add i32 %mul.i41, 272
  %call224.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %add223.i, i32 noundef %jchg.0.lcssa.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224.i)
  %cmp225.i = icmp slt i32 %call224.i, 0
  br i1 %cmp225.i, label %for.end.i.stop_channels_crit_edge, label %do.body234.i

for.end.i.stop_channels_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_channels

do.body234.i:                                     ; preds = %for.end.i
  %sync_mode260.i = getelementptr %struct.stm32_dfsdm_filter, ptr %27, i32 %19, i32 2
  %72 = ptrtoint ptr %sync_mode260.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sync_mode260.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool261.not.i = icmp eq i32 %73, 0
  %or.cond384.i = and i1 %tobool.not.i.i, %tobool261.not.i
  br i1 %or.cond384.i, label %do.body234.i.stop_channels_crit_edge, label %do.end288.i

do.body234.i.stop_channels_crit_edge:             ; preds = %do.body234.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_channels

do.end288.i:                                      ; preds = %do.body234.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %nconv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nconv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp236.i = icmp ugt i32 %75, 1
  %shl258.i = select i1 %cmp236.i, i32 16, i32 0
  %shl291.i = shl i32 %73, 3
  %and292.i = and i32 %shl291.i, 8
  %or293.i = or i32 %and292.i, %shl258.i
  br label %if.end294.i

if.end294.i:                                      ; preds = %do.end288.i, %if.then135.i
  %cr1.1.i = phi i32 [ %or293.i, %do.end288.i ], [ %or209.i, %if.then135.i ]
  %call.i390.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add.i, i32 noundef 118226968, i32 noundef %cr1.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %stm32_dfsdm_filter_configure.exit

stm32_dfsdm_filter_configure.exit:                ; preds = %if.end294.i, %do.end125.i.stm32_dfsdm_filter_configure.exit_crit_edge, %stm32_dfsdm_filter_set_trig.exit.i.stm32_dfsdm_filter_configure.exit_crit_edge, %do.end87.i.stm32_dfsdm_filter_configure.exit_crit_edge, %do.end53.i.stm32_dfsdm_filter_configure.exit_crit_edge, %if.end6.stm32_dfsdm_filter_configure.exit_crit_edge
  %retval.0.i48 = phi i32 [ %call.i390.i, %if.end294.i ], [ %call.i.i42, %if.end6.stm32_dfsdm_filter_configure.exit_crit_edge ], [ %call.i387.i, %do.end53.i.stm32_dfsdm_filter_configure.exit_crit_edge ], [ %call.i388.i, %do.end87.i.stm32_dfsdm_filter_configure.exit_crit_edge ], [ %50, %stm32_dfsdm_filter_set_trig.exit.i.stm32_dfsdm_filter_configure.exit_crit_edge ], [ %call.i389.i, %do.end125.i.stm32_dfsdm_filter_configure.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i48)
  %cmp9 = icmp slt i32 %retval.0.i48, 0
  br i1 %cmp9, label %stm32_dfsdm_filter_configure.exit.stop_channels_crit_edge, label %if.end11

stm32_dfsdm_filter_configure.exit.stop_channels_crit_edge: ; preds = %stm32_dfsdm_filter_configure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_channels

if.end11:                                         ; preds = %stm32_dfsdm_filter_configure.exit
  %76 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fl_id, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i, align 4
  %mul.i49 = shl i32 %77, 7
  %add.i50 = add i32 %mul.i49, 256
  %call.i.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef %add.i50, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i52 = icmp slt i32 %call.i.i51, 0
  br i1 %cmp.i52, label %if.end11.filter_unconfigure_crit_edge, label %if.end.i

if.end11.filter_unconfigure_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %filter_unconfigure

if.end.i:                                         ; preds = %if.end11
  %nconv.i53 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %nconv.i53 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nconv.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp15.i = icmp ult i32 %83, 2
  %tobool.not.i54 = icmp eq ptr %trig, null
  %or.cond.i55 = and i1 %tobool.not.i54, %cmp15.i
  br i1 %or.cond.i55, label %stm32_dfsdm_start_filter.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

stm32_dfsdm_start_filter.exit:                    ; preds = %if.end.i
  %84 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i, align 4
  %call.i44.i = tail call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef %add.i50, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp14 = icmp slt i32 %call.i44.i, 0
  br i1 %cmp14, label %stm32_dfsdm_start_filter.exit.filter_unconfigure_crit_edge, label %stm32_dfsdm_start_filter.exit.cleanup_crit_edge

stm32_dfsdm_start_filter.exit.cleanup_crit_edge:  ; preds = %stm32_dfsdm_start_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

stm32_dfsdm_start_filter.exit.filter_unconfigure_crit_edge: ; preds = %stm32_dfsdm_start_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %filter_unconfigure

filter_unconfigure:                               ; preds = %stm32_dfsdm_start_filter.exit.filter_unconfigure_crit_edge, %if.end11.filter_unconfigure_crit_edge
  %retval.0.i5675 = phi i32 [ %call.i44.i, %stm32_dfsdm_start_filter.exit.filter_unconfigure_crit_edge ], [ %call.i.i51, %if.end11.filter_unconfigure_crit_edge ]
  %86 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fl_id, align 4
  %mul = shl i32 %87, 7
  %add = add i32 %mul, 256
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 118226968, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %stop_channels

stop_channels:                                    ; preds = %filter_unconfigure, %stm32_dfsdm_filter_configure.exit.stop_channels_crit_edge, %do.body234.i.stop_channels_crit_edge, %for.end.i.stop_channels_crit_edge, %for.inc.i.i.i.stop_channels_crit_edge
  %ret.0 = phi i32 [ %retval.0.i48, %stm32_dfsdm_filter_configure.exit.stop_channels_crit_edge ], [ %retval.0.i5675, %filter_unconfigure ], [ -22, %do.body234.i.stop_channels_crit_edge ], [ %call224.i, %for.end.i.stop_channels_crit_edge ], [ -22, %for.inc.i.i.i.stop_channels_crit_edge ]
  %88 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %regmap1.i58 = getelementptr inbounds %struct.stm32_dfsdm, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %regmap1.i58 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap1.i58, align 4
  %smask.i59 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %89, i32 0, i32 4
  %call2.i60 = tail call i32 @_find_next_bit_be(ptr noundef %smask.i59, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i60)
  %cmp24.i = icmp ult i32 %call2.i60, 32
  br i1 %cmp24.i, label %stop_channels.for.body.i67_crit_edge, label %stop_channels.cleanup_crit_edge

stop_channels.cleanup_crit_edge:                  ; preds = %stop_channels
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

stop_channels.for.body.i67_crit_edge:             ; preds = %stop_channels
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.body.i67.for.body.i67_crit_edge, %stop_channels.for.body.i67_crit_edge
  %bit.025.i = phi i32 [ %call18.i, %for.body.i67.for.body.i67_crit_edge ], [ %call2.i60, %stop_channels.for.body.i67_crit_edge ]
  %94 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %channels.i, align 8
  %channel.i63 = getelementptr %struct.iio_chan_spec, ptr %95, i32 %bit.025.i, i32 1
  %96 = ptrtoint ptr %channel.i63 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %channel.i63, align 4
  %mul.i64 = shl i32 %97, 5
  %call.i.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef %mul.i64, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %add17.i = add nuw nsw i32 %bit.025.i, 1
  %call18.i = tail call i32 @_find_next_bit_be(ptr noundef %smask.i59, i32 noundef 32, i32 noundef %add17.i) #10
  %cmp.i66 = icmp ult i32 %call18.i, 32
  br i1 %cmp.i66, label %for.body.i67.for.body.i67_crit_edge, label %for.body.i67.cleanup_crit_edge

for.body.i67.cleanup_crit_edge:                   ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i67.for.body.i67_crit_edge:              ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i67

cleanup:                                          ; preds = %for.body.i67.cleanup_crit_edge, %stop_channels.cleanup_crit_edge, %stm32_dfsdm_start_filter.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %stm32_dfsdm_start_filter.exit.cleanup_crit_edge ], [ %ret.0, %stop_channels.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %ret.0, %for.body.i67.cleanup_crit_edge ], [ %call.i.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_dfsdm_stop_conv(ptr nocapture noundef readonly %indio_dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap1 = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %fl_id = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fl_id, align 4
  %mul.i = shl i32 %7, 7
  %add.i = add i32 %mul.i, 256
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %fl_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_id, align 4
  %mul = shl i32 %9, 7
  %add = add i32 %mul, 256
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 118226968, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %regmap1.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap1.i, align 4
  %smask.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %11, i32 0, i32 4
  %call2.i = tail call i32 @_find_next_bit_be(ptr noundef %smask.i, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i)
  %cmp24.i = icmp ult i32 %call2.i, 32
  br i1 %cmp24.i, label %for.body.lr.ph.i, label %entry.stm32_dfsdm_stop_channel.exit_crit_edge

entry.stm32_dfsdm_stop_channel.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_stop_channel.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bit.025.i = phi i32 [ %call2.i, %for.body.lr.ph.i ], [ %call18.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channels.i, align 8
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %17, i32 %bit.025.i, i32 1
  %18 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel.i, align 4
  %mul.i10 = shl i32 %19, 5
  %call.i.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %mul.i10, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %add17.i = add nuw nsw i32 %bit.025.i, 1
  %call18.i = tail call i32 @_find_next_bit_be(ptr noundef %smask.i, i32 noundef 32, i32 noundef %add17.i) #10
  %cmp.i = icmp ult i32 %call18.i, 32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.stm32_dfsdm_stop_channel.exit_crit_edge

for.body.i.stm32_dfsdm_stop_channel.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_stop_channel.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

stm32_dfsdm_stop_channel.exit:                    ; preds = %for.body.i.stm32_dfsdm_stop_channel.exit_crit_edge, %entry.stm32_dfsdm_stop_channel.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_dfsdm_stop_dfsdm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_channels_configure(ptr noundef %indio_dev, i32 noundef %fl_id, ptr noundef readnone %trig) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap1 = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %fl_list = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %fl_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fl_list, align 4
  %flo3 = getelementptr %struct.stm32_dfsdm_filter, ptr %7, i32 %fl_id, i32 1
  %fast = getelementptr %struct.stm32_dfsdm_filter, ptr %7, i32 %fl_id, i32 3
  %8 = ptrtoint ptr %fast to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fast, align 4
  %nconv = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %nconv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nconv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  %tobool.not = icmp eq ptr %trig, null
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %land.lhs.true5, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true5:                                   ; preds = %entry
  %currentmode = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %11 = ptrtoint ptr %currentmode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %currentmode, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true5.if.end17_crit_edge, label %if.then

land.lhs.true5.if.end17_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true5
  %res = getelementptr %struct.stm32_dfsdm_filter, ptr %7, i32 %fl_id, i32 1, i32 1, i32 4
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %res, align 8
  %res11 = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, ptr %flo3, i32 0, i32 4
  %15 = ptrtoint ptr %res11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %res11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp12.not = icmp ult i64 %14, %16
  br i1 %cmp12.not, label %if.then.if.end17_crit_edge, label %if.then13

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8 = getelementptr %struct.stm32_dfsdm_filter, ptr %7, i32 %fl_id, i32 1, i32 1
  %17 = ptrtoint ptr %fast to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %fast, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then.if.end17_crit_edge, %land.lhs.true5.if.end17_crit_edge, %entry.if.end17_crit_edge
  %flo.0 = phi ptr [ %arrayidx8, %if.then13 ], [ %flo3, %if.then.if.end17_crit_edge ], [ %flo3, %land.lhs.true5.if.end17_crit_edge ], [ %flo3, %entry.if.end17_crit_edge ]
  %res18 = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, ptr %flo.0, i32 0, i32 4
  %18 = ptrtoint ptr %res18 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %res18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool19.not = icmp eq i64 %19, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %do.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_channels_configure.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_channels_configure, %if.then26)) #10
          to label %do.end [label %if.then26], !srcloc !244

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %bits = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, ptr %flo.0, i32 0, i32 5
  %20 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits, align 8
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 23)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dfsdm_channels_configure.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %22) #10
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %smask = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 4
  %call30 = tail call i32 @_find_next_bit_be(ptr noundef %smask, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call30)
  %cmp3193 = icmp ult i32 %call30, 32
  br i1 %cmp3193, label %for.body.lr.ph, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %rshift = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, ptr %flo.0, i32 0, i32 2
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  br label %do.end53

do.end53:                                         ; preds = %for.inc.do.end53_crit_edge, %for.body.lr.ph
  %bit.094 = phi i32 [ %call30, %for.body.lr.ph ], [ %call63, %for.inc.do.end53_crit_edge ]
  %23 = ptrtoint ptr %rshift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rshift, align 8
  %25 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channels, align 8
  %channel = getelementptr %struct.iio_chan_spec, ptr %26, i32 %bit.094, i32 1
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel, align 4
  %mul = shl i32 %28, 5
  %add = or i32 %mul, 4
  %shl = shl i32 %24, 3
  %and56 = and i32 %shl, 248
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 248, i32 noundef %and56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool58.not = icmp eq i32 %call.i, 0
  br i1 %tobool58.not, label %for.inc, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %do.end53
  %add62 = add nuw nsw i32 %bit.094, 1
  %call63 = tail call i32 @_find_next_bit_be(ptr noundef %smask, i32 noundef 32, i32 noundef %add62) #10
  %cmp31 = icmp ult i32 %call63, 32
  br i1 %cmp31, label %for.inc.do.end53_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.do.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end53.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end17.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call.i, %do.end53.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_stm32_timer_trigger(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_stm32_lptim_trigger(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfsdm_adc_set_samp_freq(ptr noundef %indio_dev, i32 noundef %sample_freq, i32 noundef %spi_freq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %div31 = lshr i32 %sample_freq, 1
  %add = add i32 %div31, %spi_freq
  %div1 = udiv i32 %add, %sample_freq
  %rem = urem i32 %spi_freq, %sample_freq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfsdm_adc_set_samp_freq.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfsdm_adc_set_samp_freq, %if.then7)) #10
          to label %if.end9 [label %if.then7], !srcloc !244

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %div8 = udiv i32 %spi_freq, %div1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dfsdm_adc_set_samp_freq.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %sample_freq, i32 noundef %div8) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body, %entry.if.end9_crit_edge
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %fl_list.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %fl_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fl_list.i, align 4
  %fl_id.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_id.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_dfsdm_filter, ptr %7, i32 %9
  %flo.i = getelementptr %struct.stm32_dfsdm_filter, ptr %7, i32 %9, i32 1
  %10 = call ptr @memset(ptr %flo.i, i32 0, i32 64)
  %call4.i = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef %div1) #10
  %call5.i = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef %div1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %stm32_dfsdm_compute_all_osrs.exit.thread, label %if.end12

stm32_dfsdm_compute_all_osrs.exit.thread:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %call4.i, i32 noundef %call5.i) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %div13 = udiv i32 %spi_freq, %div1
  %sample_freq14 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %sample_freq14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div13, ptr %sample_freq14, align 4
  %oversamp15 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %oversamp15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div1, ptr %oversamp15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %stm32_dfsdm_compute_all_osrs.exit.thread
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %stm32_dfsdm_compute_all_osrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_compute_osrs(ptr nocapture noundef %fl, i32 noundef %fast, i32 noundef %oversamp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fl, align 8
  %arrayidx = getelementptr %struct.stm32_dfsdm_filter, ptr %fl, i32 0, i32 1, i32 %fast
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_compute_osrs.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_compute_osrs, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32_dfsdm_compute_osrs.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.48, i32 noundef %oversamp) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp, i32 2, i32 1
  %spec.select188 = select i1 %cmp, i32 2, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fast)
  %tobool11.not = icmp eq i32 %fast, 0
  %sub = add i32 %spec.select188, -1
  %conv46 = zext i32 %spec.select to i64
  %res54 = getelementptr %struct.stm32_dfsdm_filter, ptr %fl, i32 0, i32 1, i32 %fast, i32 4
  %fosr59 = getelementptr %struct.stm32_dfsdm_filter, ptr %fl, i32 0, i32 1, i32 %fast, i32 1
  %rshift81 = getelementptr %struct.stm32_dfsdm_filter, ptr %fl, i32 0, i32 1, i32 %fast, i32 2
  %lshift82 = getelementptr %struct.stm32_dfsdm_filter, ptr %fl, i32 0, i32 1, i32 %fast, i32 3
  %max86 = getelementptr %struct.stm32_dfsdm_filter, ptr %fl, i32 0, i32 1, i32 %fast, i32 6
  %bits87 = getelementptr %struct.stm32_dfsdm_filter, ptr %fl, i32 0, i32 1, i32 %fast, i32 5
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc113.for.cond8.preheader_crit_edge, %do.end
  %fosr.0199 = phi i32 [ 1, %do.end ], [ %inc114, %for.inc113.for.cond8.preheader_crit_edge ]
  %conv = zext i32 %fosr.0199 to i64
  br label %for.body10

for.body10:                                       ; preds = %for.inc110.for.body10_crit_edge, %for.cond8.preheader
  %iosr.0197 = phi i32 [ 1, %for.cond8.preheader ], [ %inc111, %for.inc110.for.body10_crit_edge ]
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul nuw nsw i32 %iosr.0197, %fosr.0199
  br label %if.end23

if.else:                                          ; preds = %for.body10
  %4 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14 = icmp eq i32 %5, 0
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw nsw i32 %iosr.0197, 3
  %mul16 = mul nuw nsw i32 %add, %fosr.0199
  %add17 = add nuw nsw i32 %mul16, 2
  br label %if.end23

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add19 = add i32 %sub, %iosr.0197
  %mul20 = mul i32 %add19, %fosr.0199
  %add21 = add i32 %mul20, %spec.select188
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then15, %if.then12
  %d.0 = phi i32 [ %mul, %if.then12 ], [ %add17, %if.then15 ], [ %add21, %if.else18 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %d.0, i32 %oversamp)
  %cmp24 = icmp ugt i32 %d.0, %oversamp
  br i1 %cmp24, label %if.end23.for.inc113_crit_edge, label %if.else26

if.end23.for.inc113_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc113

if.else26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp4(i32 %d.0, i32 %oversamp)
  %cmp27.not = icmp eq i32 %d.0, %oversamp
  br i1 %cmp27.not, label %if.else26.for.cond32_crit_edge, label %if.else26.for.inc110_crit_edge

if.else26.for.inc110_crit_edge:                   ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110

if.else26.for.cond32_crit_edge:                   ; preds = %if.else26
  br label %for.cond32

for.cond32:                                       ; preds = %for.body35.for.cond32_crit_edge, %if.else26.for.cond32_crit_edge
  %res.0 = phi i64 [ %mul37, %for.body35.for.cond32_crit_edge ], [ %conv, %if.else26.for.cond32_crit_edge ]
  %i.0.in = phi i32 [ %i.0, %for.body35.for.cond32_crit_edge ], [ %spec.select188, %if.else26.for.cond32_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp33.not = icmp eq i32 %i.0, 0
  br i1 %cmp33.not, label %for.end, label %for.body35

for.body35:                                       ; preds = %for.cond32
  %mul37 = mul i64 %res.0, %conv
  %cmp38 = icmp ugt i64 %mul37, 1073741824
  br i1 %cmp38, label %for.body35.for.inc110_crit_edge, label %for.body35.for.cond32_crit_edge

for.body35.for.cond32_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond32

for.body35.for.inc110_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110

for.end:                                          ; preds = %for.cond32
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %res.0)
  %cmp42 = icmp ugt i64 %res.0, 1073741824
  br i1 %cmp42, label %for.end.for.inc110_crit_edge, label %if.end45

for.end.for.inc110_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110

if.end45:                                         ; preds = %for.end
  %conv48 = zext i32 %iosr.0197 to i64
  %mul47 = mul nuw nsw i64 %conv48, %conv46
  %mul49 = mul i64 %mul47, %res.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %mul49)
  %cmp50 = icmp ugt i64 %mul49, 1073741824
  br i1 %cmp50, label %if.end45.for.inc110_crit_edge, label %if.end53

if.end45.for.inc110_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110

if.end53:                                         ; preds = %if.end45
  %6 = ptrtoint ptr %res54 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %res54, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul49, i64 %7)
  %cmp55.not = icmp ult i64 %mul49, %7
  br i1 %cmp55.not, label %if.end53.for.inc110_crit_edge, label %if.then57

if.end53.for.inc110_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110

if.then57:                                        ; preds = %if.end53
  %8 = ptrtoint ptr %res54 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %mul49, ptr %res54, align 8
  %9 = ptrtoint ptr %fosr59 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %fosr.0199, ptr %fosr59, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %iosr.0197, ptr %arrayidx, align 8
  %conv62 = trunc i64 %mul49 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv62)
  %tobool.not.i = icmp eq i32 %conv62, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %conv62, i1 true) #10, !range !245
  %sub.i = sub nuw nsw i32 32, %11
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %shl = shl nuw nsw i64 %mul49, 8
  %sub66 = add nsw i32 %cond.i, -1
  %shl67 = shl nuw i32 1, %sub66
  %conv68 = zext i32 %shl67 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul49, i64 %conv68)
  %cmp69 = icmp ugt i64 %mul49, %conv68
  %not.cmp69 = xor i1 %cmp69, true
  %dec73 = sext i1 %not.cmp69 to i64
  %max.0 = add nsw i64 %shl, %dec73
  %inc = zext i1 %cmp69 to i32
  %bits.0 = add nuw nsw i32 %cond.i, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %bits.0)
  %cmp76 = icmp ult i32 %bits.0, 24
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %sub75 = sub nuw nsw i32 24, %bits.0
  %12 = ptrtoint ptr %rshift81 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rshift81, align 8
  %13 = ptrtoint ptr %lshift82 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub75, ptr %lshift82, align 4
  %extract.t207 = trunc i64 %max.0 to i32
  br label %if.end84

if.else79:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %sub80 = add nsw i32 %bits.0, -23
  %14 = ptrtoint ptr %rshift81 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub80, ptr %rshift81, align 8
  %15 = ptrtoint ptr %lshift82 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %lshift82, align 4
  %sh_prom = zext i32 %sub80 to i64
  %shr = lshr i64 %max.0, %sh_prom
  %extract.t206 = trunc i64 %shr to i32
  br label %if.end84

if.end84:                                         ; preds = %if.else79, %if.then78
  %shr.sink.off0 = phi i32 [ %extract.t206, %if.else79 ], [ %extract.t207, %if.then78 ]
  %16 = ptrtoint ptr %max86 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.sink.off0, ptr %max86, align 4
  %17 = ptrtoint ptr %bits87 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bits.0, ptr %bits87, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_compute_osrs.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_compute_osrs, %if.then100)) #10
          to label %for.inc110 [label %if.then100], !srcloc !244

if.then100:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %fosr59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fosr59, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 8
  %22 = ptrtoint ptr %res54 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %res54, align 8
  %24 = ptrtoint ptr %rshift81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rshift81, align 8
  %26 = ptrtoint ptr %lshift82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lshift82, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32_dfsdm_compute_osrs.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.49, i32 noundef %fast, i32 noundef %19, i32 noundef %21, i64 noundef %23, i32 noundef %bits.0, i32 noundef %25, i32 noundef %27) #10
  br label %for.inc110

for.inc110:                                       ; preds = %if.then100, %if.end84, %if.end53.for.inc110_crit_edge, %if.end45.for.inc110_crit_edge, %for.end.for.inc110_crit_edge, %for.body35.for.inc110_crit_edge, %if.else26.for.inc110_crit_edge
  %inc111 = add nuw nsw i32 %iosr.0197, 1
  %exitcond.not = icmp eq i32 %inc111, 257
  br i1 %exitcond.not, label %for.inc110.for.inc113_crit_edge, label %for.inc110.for.body10_crit_edge

for.inc110.for.body10_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.inc110.for.inc113_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc113

for.inc113:                                       ; preds = %for.inc110.for.inc113_crit_edge, %if.end23.for.inc113_crit_edge
  %inc114 = add nuw nsw i32 %fosr.0199, 1
  %exitcond202.not = icmp eq i32 %inc114, 1025
  br i1 %exitcond202.not, label %for.end115, label %for.inc113.for.cond8.preheader_crit_edge

for.inc113.for.cond8.preheader_crit_edge:         ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader

for.end115:                                       ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %res54 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %res54, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool117.not = icmp eq i64 %29, 0
  %. = select i1 %tobool117.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_validate_trigger(ptr nocapture noundef readnone %indio_dev, ptr noundef %trig) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name4.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %0 = phi ptr [ @.str.31, %entry ], [ %4, %for.inc.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i1 @is_stm32_timer_trigger(ptr noundef %trig) #10
  br i1 %call.i, label %for.body.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call1.i = tail call zeroext i1 @is_stm32_lptim_trigger(ptr noundef %trig) #10
  br i1 %call1.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %1 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name4.i, align 4
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.stm32_dfsdm_get_jextsel.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.stm32_dfsdm_get_jextsel.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_get_jextsel.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %arrayidx.i = getelementptr [13 x %struct.stm32_dfsdm_trig_info], ptr @stm32_dfsdm_trigs, i32 0, i32 %inc.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %exitcond.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.i, label %for.inc.i.stm32_dfsdm_get_jextsel.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.stm32_dfsdm_get_jextsel.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_get_jextsel.exit

stm32_dfsdm_get_jextsel.exit:                     ; preds = %for.inc.i.stm32_dfsdm_get_jextsel.exit_crit_edge, %land.lhs.true.i.stm32_dfsdm_get_jextsel.exit_crit_edge
  %5 = phi i32 [ 0, %land.lhs.true.i.stm32_dfsdm_get_jextsel.exit_crit_edge ], [ -22, %for.inc.i.stm32_dfsdm_get_jextsel.exit_crit_edge ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_init(ptr noundef %dev, ptr noundef %indio_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %oversamp = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %oversamp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %oversamp, align 4
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %fl_list.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %fl_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fl_list.i, align 4
  %fl_id.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_id.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_dfsdm_filter, ptr %7, i32 %9
  %flo.i = getelementptr %struct.stm32_dfsdm_filter, ptr %7, i32 %9, i32 1
  %10 = call ptr @memset(ptr %flo.i, i32 0, i32 64)
  %call4.i = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef 100) #10
  %call5.i = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp6.i, i1 false
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  br i1 %or.cond.i, label %stm32_dfsdm_compute_all_osrs.exit.thread, label %if.end

stm32_dfsdm_compute_all_osrs.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %call4.i, i32 noundef %call5.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %12, ptr noundef nonnull @.str.57, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %num_chs = getelementptr inbounds %struct.stm32_dfsdm, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %num_chs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_chs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %16)
  %cmp6 = icmp ugt i32 %call.i, %16
  br i1 %cmp6, label %lor.lhs.false.do.end_crit_edge, label %if.end10

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %spec.select = phi i32 [ %call.i, %if.end.do.end_crit_edge ], [ -22, %lor.lhs.false.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.58) #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call12 = tail call ptr @devm_iio_hw_consumer_alloc(ptr noundef %dev.i) #10
  %hwc = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %hwc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call12, ptr %hwc, align 4
  %cmp.i103 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 88) #10
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end16.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !246

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end16
  %20 = extractvalue { i32, i1 } %18, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %20, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21115.not = icmp eq i32 %call.i, 0
  br i1 %cmp21115.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %chan_idx.0116, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %chan_idx.0116 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iio_chan_spec, ptr %call5.i.i, i32 %chan_idx.0116
  %scan_index = getelementptr %struct.iio_chan_spec, ptr %call5.i.i, i32 %chan_idx.0116, i32 4
  %21 = ptrtoint ptr %scan_index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %chan_idx.0116, ptr %scan_index, align 4
  %call23 = tail call fastcc i32 @stm32_dfsdm_adc_chan_init_one(ptr noundef %indio_dev, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %for.cond

do.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %22 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i, ptr %num_channels, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i, ptr %channels, align 8
  %completion = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @init_completion.__key) #10
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 8
  %call1.i = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.93) #10
  %dma_chan.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call1.i, ptr %dma_chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %stm32_dfsdm_dma_request.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end
  %28 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call1.i, align 4
  %dev8.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev8.i, align 4
  %dma_buf.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %26, i32 0, i32 17
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %31, i32 noundef 16384, ptr noundef %dma_buf.i, i32 noundef 3264, i32 noundef 0) #10
  %rx_buf.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %26, i32 0, i32 13
  %32 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %stm32_dfsdm_dma_request.exit.thread, label %stm32_dfsdm_dma_request.exit.thread112

stm32_dfsdm_dma_request.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_chan.i, align 4
  tail call void @dma_release_channel(ptr noundef %34) #10
  br label %if.then35

stm32_dfsdm_dma_request.exit.thread112:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %indio_dev, align 8
  %or.i = or i32 %36, 4
  store i32 %or.i, ptr %indio_dev, align 8
  %setup_ops.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 18
  %37 = ptrtoint ptr %setup_ops.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @stm32_dfsdm_buffer_setup_ops, ptr %setup_ops.i, align 4
  br label %if.end47

stm32_dfsdm_dma_request.exit:                     ; preds = %for.end
  %38 = ptrtoint ptr %call1.i to i32
  %39 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %dma_chan.i, align 4
  %40 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %38, label %stm32_dfsdm_dma_request.exit.if.then35_crit_edge [
    i32 0, label %stm32_dfsdm_dma_request.exit.if.end47_crit_edge
    i32 -19, label %do.body38
  ]

stm32_dfsdm_dma_request.exit.if.end47_crit_edge:  ; preds = %stm32_dfsdm_dma_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

stm32_dfsdm_dma_request.exit.if.then35_crit_edge: ; preds = %stm32_dfsdm_dma_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.then35:                                        ; preds = %stm32_dfsdm_dma_request.exit.if.then35_crit_edge, %stm32_dfsdm_dma_request.exit.thread
  %retval.0.i105111 = phi i32 [ -12, %stm32_dfsdm_dma_request.exit.thread ], [ %38, %stm32_dfsdm_dma_request.exit.if.then35_crit_edge ]
  %call36 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i105111, ptr noundef nonnull @.str.63) #10
  br label %cleanup

do.body38:                                        ; preds = %stm32_dfsdm_dma_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_adc_init.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_adc_init, %if.then43)) #10
          to label %cleanup [label %if.then43], !srcloc !244

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dfsdm_adc_init.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.64) #10
  br label %cleanup

if.end47:                                         ; preds = %stm32_dfsdm_dma_request.exit.if.end47_crit_edge, %stm32_dfsdm_dma_request.exit.thread112
  %call48 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %indio_dev, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef null, i32 noundef 0, ptr noundef nonnull @stm32_dfsdm_buffer_setup_ops, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stm32_dfsdm_dma_release(ptr noundef %indio_dev)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.66) #13
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %indio_dev, align 8
  %or = or i32 %42, 32
  store i32 %or, ptr %indio_dev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then50, %if.then43, %do.body38, %if.then35, %do.end28, %devm_kcalloc.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %stm32_dfsdm_compute_all_osrs.exit.thread
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %call23, %do.end28 ], [ %call36, %if.then35 ], [ %call48, %if.then50 ], [ 0, %if.end55 ], [ -517, %if.end10.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.then43 ], [ -22, %stm32_dfsdm_compute_all_osrs.exit.thread ], [ 0, %do.body38 ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_hw_consumer_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_adc_chan_init_one(ptr noundef %indio_dev, ptr noundef %ch) unnamed_addr #4 align 64 {
entry:
  %of_str.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_str.i) #10
  %4 = ptrtoint ptr %of_str.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %of_str.i, align 4, !annotation !243
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 4
  %5 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_index.i, align 4
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %of_node.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 1
  %call.i = tail call i32 @of_property_read_u32_index(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef %6, ptr noundef %channel.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.68, i32 noundef %6) #13
  br label %stm32_dfsdm_channel_parse_of.exit.thread

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel.i, align 4
  %num_chs.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %num_chs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_chs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp3.not.i = icmp ult i32 %10, %12
  br i1 %cmp3.not.i, label %if.end11.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.71, i32 noundef %10, i32 noundef %12) #13
  br label %stm32_dfsdm_channel_parse_of.exit.thread

if.end11.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %datasheet_name.i = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 18
  %call.i.i = tail call i32 @of_property_read_string_helper(ptr noundef %14, ptr noundef nonnull @.str.73, ptr noundef %datasheet_name.i, i32 noundef 1, i32 noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.75, i32 noundef %6) #13
  br label %stm32_dfsdm_channel_parse_of.exit.thread

if.end21.i:                                       ; preds = %if.end11.i
  %ch_list.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %ch_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_list.i, align 4
  %17 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_dfsdm_channel, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %call.i92.i = call i32 @of_property_read_string_helper(ptr noundef %21, ptr noundef nonnull @.str.77, ptr noundef nonnull %of_str.i, i32 noundef 1, i32 noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i92.i)
  %tobool.not.i = icmp sgt i32 %call.i92.i, -1
  br i1 %tobool.not.i, label %if.then27.i, label %if.end21.i.if.end32.i_crit_edge

if.end21.i.if.end32.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then27.i:                                      ; preds = %if.end21.i
  %22 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_str.i, align 4
  %call.i93.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.80, ptr noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool3.not.i.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool3.not.i.i, label %if.then27.i.stm32_dfsdm_str2val.exit.i_crit_edge, label %land.rhs.i.1.i

if.then27.i.stm32_dfsdm_str2val.exit.i_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_str2val.exit.i

land.rhs.i.1.i:                                   ; preds = %if.then27.i
  %call.i93.1.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.81, ptr noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.1.i)
  %tobool3.not.i.1.i = icmp eq i32 %call.i93.1.i, 0
  br i1 %tobool3.not.i.1.i, label %land.rhs.i.1.i.stm32_dfsdm_str2val.exit.i_crit_edge, label %land.rhs.i.2.i

land.rhs.i.1.i.stm32_dfsdm_str2val.exit.i_crit_edge: ; preds = %land.rhs.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_str2val.exit.i

land.rhs.i.2.i:                                   ; preds = %land.rhs.i.1.i
  %call.i93.2.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.82, ptr noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.2.i)
  %tobool3.not.i.2.i = icmp eq i32 %call.i93.2.i, 0
  br i1 %tobool3.not.i.2.i, label %land.rhs.i.2.i.stm32_dfsdm_str2val.exit.i_crit_edge, label %land.rhs.i.3.i

land.rhs.i.2.i.stm32_dfsdm_str2val.exit.i_crit_edge: ; preds = %land.rhs.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_str2val.exit.i

land.rhs.i.3.i:                                   ; preds = %land.rhs.i.2.i
  %call.i93.3.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.83, ptr noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.3.i)
  %tobool3.not.i.3.i = icmp eq i32 %call.i93.3.i, 0
  br i1 %tobool3.not.i.3.i, label %land.rhs.i.3.i.stm32_dfsdm_str2val.exit.i_crit_edge, label %land.rhs.i.3.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge

land.rhs.i.3.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge: ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_channel_parse_of.exit.thread

land.rhs.i.3.i.stm32_dfsdm_str2val.exit.i_crit_edge: ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_str2val.exit.i

stm32_dfsdm_str2val.exit.i:                       ; preds = %land.rhs.i.3.i.stm32_dfsdm_str2val.exit.i_crit_edge, %land.rhs.i.2.i.stm32_dfsdm_str2val.exit.i_crit_edge, %land.rhs.i.1.i.stm32_dfsdm_str2val.exit.i_crit_edge, %if.then27.i.stm32_dfsdm_str2val.exit.i_crit_edge
  %p.011.i.lcssa117.i = phi ptr [ @stm32_dfsdm_chan_type, %if.then27.i.stm32_dfsdm_str2val.exit.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_type, i32 0, i32 1), %land.rhs.i.1.i.stm32_dfsdm_str2val.exit.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_type, i32 0, i32 2), %land.rhs.i.2.i.stm32_dfsdm_str2val.exit.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_type, i32 0, i32 3), %land.rhs.i.3.i.stm32_dfsdm_str2val.exit.i_crit_edge ]
  %val.i.i = getelementptr inbounds %struct.stm32_dfsdm_str2field, ptr %p.011.i.lcssa117.i, i32 0, i32 1
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp29.i = icmp slt i32 %25, 0
  br i1 %cmp29.i, label %stm32_dfsdm_str2val.exit.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge, label %stm32_dfsdm_str2val.exit.i.if.end32.i_crit_edge

stm32_dfsdm_str2val.exit.i.if.end32.i_crit_edge:  ; preds = %stm32_dfsdm_str2val.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

stm32_dfsdm_str2val.exit.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge: ; preds = %stm32_dfsdm_str2val.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_channel_parse_of.exit.thread

if.end32.i:                                       ; preds = %stm32_dfsdm_str2val.exit.i.if.end32.i_crit_edge, %if.end21.i.if.end32.i_crit_edge
  %val.0.i = phi i32 [ %25, %stm32_dfsdm_str2val.exit.i.if.end32.i_crit_edge ], [ 0, %if.end21.i.if.end32.i_crit_edge ]
  %type.i = getelementptr %struct.stm32_dfsdm_channel, ptr %16, i32 %18, i32 1
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val.0.i, ptr %type.i, align 4
  %27 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node.i, align 8
  %call.i94.i = call i32 @of_property_read_string_helper(ptr noundef %28, ptr noundef nonnull @.str.78, ptr noundef nonnull %of_str.i, i32 noundef 1, i32 noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i94.i)
  %tobool36.not.i = icmp sgt i32 %call.i94.i, -1
  br i1 %tobool36.not.i, label %if.then37.i, label %if.end32.i.if.end43.i_crit_edge

if.end32.i.if.end43.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then37.i:                                      ; preds = %if.end32.i
  %29 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_str.i, align 4
  %call.i98.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.84, ptr noundef %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %tobool3.not.i99.i = icmp eq i32 %call.i98.i, 0
  br i1 %tobool3.not.i99.i, label %if.then37.i.stm32_dfsdm_str2val.exit107.i_crit_edge, label %land.rhs.i97.1.i

if.then37.i.stm32_dfsdm_str2val.exit107.i_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_str2val.exit107.i

land.rhs.i97.1.i:                                 ; preds = %if.then37.i
  %call.i98.1.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.85, ptr noundef %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.1.i)
  %tobool3.not.i99.1.i = icmp eq i32 %call.i98.1.i, 0
  br i1 %tobool3.not.i99.1.i, label %land.rhs.i97.1.i.stm32_dfsdm_str2val.exit107.i_crit_edge, label %land.rhs.i97.2.i

land.rhs.i97.1.i.stm32_dfsdm_str2val.exit107.i_crit_edge: ; preds = %land.rhs.i97.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_str2val.exit107.i

land.rhs.i97.2.i:                                 ; preds = %land.rhs.i97.1.i
  %call.i98.2.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.86, ptr noundef %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.2.i)
  %tobool3.not.i99.2.i = icmp eq i32 %call.i98.2.i, 0
  br i1 %tobool3.not.i99.2.i, label %land.rhs.i97.2.i.stm32_dfsdm_str2val.exit107.i_crit_edge, label %land.rhs.i97.3.i

land.rhs.i97.2.i.stm32_dfsdm_str2val.exit107.i_crit_edge: ; preds = %land.rhs.i97.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_str2val.exit107.i

land.rhs.i97.3.i:                                 ; preds = %land.rhs.i97.2.i
  %call.i98.3.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.87, ptr noundef %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.3.i)
  %tobool3.not.i99.3.i = icmp eq i32 %call.i98.3.i, 0
  br i1 %tobool3.not.i99.3.i, label %land.rhs.i97.3.i.stm32_dfsdm_str2val.exit107.i_crit_edge, label %land.rhs.i97.3.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge

land.rhs.i97.3.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge: ; preds = %land.rhs.i97.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_channel_parse_of.exit.thread

land.rhs.i97.3.i.stm32_dfsdm_str2val.exit107.i_crit_edge: ; preds = %land.rhs.i97.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_str2val.exit107.i

stm32_dfsdm_str2val.exit107.i:                    ; preds = %land.rhs.i97.3.i.stm32_dfsdm_str2val.exit107.i_crit_edge, %land.rhs.i97.2.i.stm32_dfsdm_str2val.exit107.i_crit_edge, %land.rhs.i97.1.i.stm32_dfsdm_str2val.exit107.i_crit_edge, %if.then37.i.stm32_dfsdm_str2val.exit107.i_crit_edge
  %p.011.i95.lcssa116.i = phi ptr [ @stm32_dfsdm_chan_src, %if.then37.i.stm32_dfsdm_str2val.exit107.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_src, i32 0, i32 1), %land.rhs.i97.1.i.stm32_dfsdm_str2val.exit107.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_src, i32 0, i32 2), %land.rhs.i97.2.i.stm32_dfsdm_str2val.exit107.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_src, i32 0, i32 3), %land.rhs.i97.3.i.stm32_dfsdm_str2val.exit107.i_crit_edge ]
  %val.i101.i = getelementptr inbounds %struct.stm32_dfsdm_str2field, ptr %p.011.i95.lcssa116.i, i32 0, i32 1
  %31 = ptrtoint ptr %val.i101.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp39.i = icmp slt i32 %32, 0
  br i1 %cmp39.i, label %stm32_dfsdm_str2val.exit107.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge, label %stm32_dfsdm_str2val.exit107.i.if.end43.i_crit_edge

stm32_dfsdm_str2val.exit107.i.if.end43.i_crit_edge: ; preds = %stm32_dfsdm_str2val.exit107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

stm32_dfsdm_str2val.exit107.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge: ; preds = %stm32_dfsdm_str2val.exit107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_channel_parse_of.exit.thread

if.end43.i:                                       ; preds = %stm32_dfsdm_str2val.exit107.i.if.end43.i_crit_edge, %if.end32.i.if.end43.i_crit_edge
  %val.1.i = phi i32 [ %32, %stm32_dfsdm_str2val.exit107.i.if.end43.i_crit_edge ], [ 0, %if.end32.i.if.end43.i_crit_edge ]
  %src.i = getelementptr %struct.stm32_dfsdm_channel, ptr %16, i32 %18, i32 2
  %33 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %val.1.i, ptr %src.i, align 4
  %34 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node.i, align 8
  %alt_si.i = getelementptr %struct.stm32_dfsdm_channel, ptr %16, i32 %18, i32 3
  %call46.i = call i32 @of_property_read_u32_index(ptr noundef %35, ptr noundef nonnull @.str.79, i32 noundef %6, ptr noundef %alt_si.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.then48.i, label %if.end43.i.if.end_crit_edge

if.end43.i.if.end_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %alt_si.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %alt_si.i, align 4
  br label %if.end

stm32_dfsdm_channel_parse_of.exit.thread:         ; preds = %stm32_dfsdm_str2val.exit107.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge, %land.rhs.i97.3.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge, %stm32_dfsdm_str2val.exit.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge, %land.rhs.i.3.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge, %do.end19.i, %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %land.rhs.i.3.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge ], [ -22, %land.rhs.i97.3.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge ], [ %32, %stm32_dfsdm_str2val.exit107.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge ], [ %25, %stm32_dfsdm_str2val.exit.i.stm32_dfsdm_channel_parse_of.exit.thread_crit_edge ], [ %call.i.i, %do.end19.i ], [ -22, %do.end7.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_str.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.then48.i, %if.end43.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_str.i) #10
  %37 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ch, align 4
  %indexed = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 19
  %38 = ptrtoint ptr %indexed to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %indexed, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %indexed, align 4
  %info_mask_separate = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 6
  %39 = ptrtoint ptr %info_mask_separate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %info_mask_separate, align 4
  %info_mask_shared_by_all = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 12
  %40 = ptrtoint ptr %info_mask_shared_by_all to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 33558528, ptr %info_mask_shared_by_all, align 4
  %dev_data = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_data, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp3 = icmp eq i32 %44, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ext_info = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 16
  %45 = ptrtoint ptr %ext_info to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @dfsdm_adc_audio_ext_info, ptr %ext_info, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 8, ptr %shift, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %scan_type6 = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 5
  %47 = ptrtoint ptr %scan_type6 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 115, ptr %scan_type6, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %realbits to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 24, ptr %realbits, align 1
  %storagebits = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %storagebits to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 32, ptr %storagebits, align 2
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %ch_list = getelementptr inbounds %struct.stm32_dfsdm, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %ch_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ch_list, align 4
  %54 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channel.i, align 4
  %arrayidx = getelementptr %struct.stm32_dfsdm_channel, ptr %53, i32 %55
  %call11 = call fastcc i32 @stm32_dfsdm_chan_configure(ptr noundef %51, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %stm32_dfsdm_channel_parse_of.exit.thread
  %retval.0 = phi i32 [ %call11, %if.end5 ], [ %retval.0.i.ph, %stm32_dfsdm_channel_parse_of.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_chan_configure(ptr nocapture noundef readonly %dfsdm, ptr nocapture noundef readonly %ch) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch, align 4
  %regmap2 = getelementptr inbounds %struct.stm32_dfsdm, ptr %dfsdm, i32 0, i32 2
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  %mul = shl i32 %1, 5
  %type = getelementptr inbounds %struct.stm32_dfsdm_channel, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %and17 = and i32 %5, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %mul, i32 noundef 3, i32 noundef %and17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end43

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end43:                                         ; preds = %entry
  %src = getelementptr inbounds %struct.stm32_dfsdm_channel, ptr %ch, i32 0, i32 2
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src, align 4
  %shl46 = shl i32 %7, 2
  %and47 = and i32 %shl46, 12
  %call.i103 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %mul, i32 noundef 12, i32 noundef %and47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp49 = icmp slt i32 %call.i103, 0
  br i1 %cmp49, label %do.end43.cleanup_crit_edge, label %do.end75

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end75:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  %alt_si = getelementptr inbounds %struct.stm32_dfsdm_channel, ptr %ch, i32 0, i32 3
  %8 = ptrtoint ptr %alt_si to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alt_si, align 4
  %shl78 = shl i32 %9, 8
  %and79 = and i32 %shl78, 256
  %call.i104 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %mul, i32 noundef 256, i32 noundef %and79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %do.end43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i104, %do.end75 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i103, %do.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfsdm_adc_audio_get_spiclk(ptr nocapture noundef readonly %indio_dev, i32 noundef %priv, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spi_freq = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %spi_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spi_freq, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.89, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfsdm_adc_audio_set_spiclk(ptr noundef %indio_dev, i32 noundef %priv, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #4 align 64 {
entry:
  %spi_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ch_list = getelementptr inbounds %struct.stm32_dfsdm, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ch_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_list, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %sample_freq1 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %sample_freq1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sample_freq1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_freq) #10
  %10 = ptrtoint ptr %spi_freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %spi_freq, align 4, !annotation !243
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #13
  %src = getelementptr %struct.stm32_dfsdm_channel, ptr %5, i32 %7, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %spi_freq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %spi_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spi_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  %call10 = call fastcc i32 @dfsdm_adc_set_samp_freq(ptr noundef %indio_dev, i32 noundef %9, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.cleanup_crit_edge, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %15 = ptrtoint ptr %spi_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spi_freq, align 4
  %spi_freq15 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %spi_freq15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %spi_freq15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end14 ], [ -1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_freq) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_postenable(ptr noundef %indio_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bufi = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bufi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bufi, align 4
  %hwc = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @iio_hw_consumer_enable(ptr noundef nonnull %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @stm32_dfsdm_start_dfsdm(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.err_stop_hwc_crit_edge, label %if.end8

if.end4.err_stop_hwc_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_stop_hwc

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @stm32_dfsdm_adc_dma_start(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94) #13
  br label %stop_dfsdm

if.end12:                                         ; preds = %if.end8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %7 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trig, align 4
  %call13 = tail call fastcc i32 @stm32_dfsdm_start_conv(ptr noundef %indio_dev, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %do.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end18:                                         ; preds = %if.end12
  %dev19 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.97) #13
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %dma_chan.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end18.stop_dfsdm_crit_edge, label %if.end.i

do.end18.stop_dfsdm_crit_edge:                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_dfsdm

if.end.i:                                         ; preds = %do.end18
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %regmap.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %fl_id.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fl_id.i, align 4
  %mul.i = shl i32 %18, 7
  %add.i = add i32 %mul.i, 256
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add.i, i32 noundef 2097184, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_chan.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 47
  %23 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.stop_dfsdm_crit_edge, label %if.then.i.i

if.end.i.stop_dfsdm_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_dfsdm

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i8.i = tail call i32 %24(ptr noundef %20) #10
  br label %stop_dfsdm

stop_dfsdm:                                       ; preds = %if.then.i.i, %if.end.i.stop_dfsdm_crit_edge, %do.end18.stop_dfsdm_crit_edge, %do.end
  %ret.0 = phi i32 [ %call9, %do.end ], [ %call13, %do.end18.stop_dfsdm_crit_edge ], [ %call13, %if.end.i.stop_dfsdm_crit_edge ], [ %call13, %if.then.i.i ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call22 = tail call i32 @stm32_dfsdm_stop_dfsdm(ptr noundef %26) #10
  br label %err_stop_hwc

err_stop_hwc:                                     ; preds = %stop_dfsdm, %if.end4.err_stop_hwc_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end4.err_stop_hwc_crit_edge ], [ %ret.0, %stop_dfsdm ]
  %27 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwc, align 4
  %tobool24.not = icmp eq ptr %28, null
  br i1 %tobool24.not, label %err_stop_hwc.cleanup_crit_edge, label %if.then25

err_stop_hwc.cleanup_crit_edge:                   ; preds = %err_stop_hwc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %err_stop_hwc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iio_hw_consumer_disable(ptr noundef nonnull %28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %err_stop_hwc.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %ret.1, %if.then25 ], [ %ret.1, %err_stop_hwc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_predisable(ptr nocapture noundef readonly %indio_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call fastcc void @stm32_dfsdm_stop_conv(ptr noundef %indio_dev)
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dma_chan.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.stm32_dfsdm_adc_dma_stop.exit_crit_edge, label %if.end.i

entry.stm32_dfsdm_adc_dma_stop.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_adc_dma_stop.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %regmap.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %fl_id.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fl_id.i, align 4
  %mul.i = shl i32 %11, 7
  %add.i = add i32 %mul.i, 256
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add.i, i32 noundef 2097184, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_chan.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.stm32_dfsdm_adc_dma_stop.exit_crit_edge, label %if.then.i.i

if.end.i.stm32_dfsdm_adc_dma_stop.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_adc_dma_stop.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i8.i = tail call i32 %17(ptr noundef %13) #10
  br label %stm32_dfsdm_adc_dma_stop.exit

stm32_dfsdm_adc_dma_stop.exit:                    ; preds = %if.then.i.i, %if.end.i.stm32_dfsdm_adc_dma_stop.exit_crit_edge, %entry.stm32_dfsdm_adc_dma_stop.exit_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @stm32_dfsdm_stop_dfsdm(ptr noundef %19) #10
  %hwc = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwc, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %stm32_dfsdm_adc_dma_stop.exit.if.end_crit_edge, label %if.then

stm32_dfsdm_adc_dma_stop.exit.if.end_crit_edge:   ; preds = %stm32_dfsdm_adc_dma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %stm32_dfsdm_adc_dma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iio_hw_consumer_disable(ptr noundef nonnull %21) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %stm32_dfsdm_adc_dma_stop.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_adc_dma_start(ptr noundef %indio_dev) unnamed_addr #4 align 64 {
entry:
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #10
  %2 = call ptr @memset(ptr %config, i32 0, i32 48)
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %phys_base = getelementptr inbounds %struct.stm32_dfsdm, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_base, align 4
  %7 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %8 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %src_addr_width, align 4
  %dma_chan = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_adc_dma_start.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_adc_dma_start, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !244

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %buf_sz = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_sz, align 4
  %div99 = lshr i32 %12, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dfsdm_adc_dma_start.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %12, i32 noundef %div99) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %nconv = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %nconv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nconv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %trig = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %15 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trig, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.else, %land.lhs.true.if.end19_crit_edge
  %.sink = phi i32 [ 280, %if.else ], [ 284, %land.lhs.true.if.end19_crit_edge ]
  %fl_id13 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %fl_id13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fl_id13, align 4
  %mul14 = shl i32 %18, 7
  %add16 = add i32 %mul14, %.sink
  %19 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_addr, align 4
  %add18 = add i32 %add16, %20
  store i32 %add18, ptr %src_addr, align 4
  %21 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_chan, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end19.cleanup_crit_edge, label %dmaengine_slave_config.exit

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dmaengine_slave_config.exit:                      ; preds = %if.end19
  %call.i = call i32 %26(ptr noundef %22, ptr noundef nonnull %config) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %dmaengine_slave_config.exit.cleanup_crit_edge

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %dmaengine_slave_config.exit
  %27 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_chan, align 4
  %dma_buf = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_buf, align 4
  %buf_sz26 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %buf_sz26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_sz26, align 4
  %div2898 = lshr i32 %32, 1
  %tobool.not.i101 = icmp eq ptr %28, null
  br i1 %tobool.not.i101, label %if.end24.cleanup_crit_edge, label %lor.lhs.false.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end24
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %tobool1.not.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 40
  %35 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i102 = call ptr %36(ptr noundef nonnull %28, i32 noundef %30, i32 noundef %32, i32 noundef %div2898, i32 noundef 2, i32 noundef 1) #10
  %tobool30.not = icmp eq ptr %call.i102, null
  br i1 %tobool30.not, label %dmaengine_prep_dma_cyclic.exit.cleanup_crit_edge, label %if.end32

dmaengine_prep_dma_cyclic.exit.cleanup_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i102, i32 0, i32 6
  %37 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @stm32_dfsdm_dma_buffer_done, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i102, i32 0, i32 8
  %38 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %indio_dev, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i102, i32 0, i32 4
  %39 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_submit.i, align 4
  %call.i104 = call i32 %40(ptr noundef nonnull %call.i102) #10
  %41 = call i32 @llvm.smin.i32(i32 %call.i104, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i104)
  %tobool35.not = icmp sgt i32 %call.i104, -1
  br i1 %tobool35.not, label %if.end37, label %if.end32.err_stop_dma_crit_edge

if.end32.err_stop_dma_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_stop_dma

if.end37:                                         ; preds = %if.end32
  %42 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_chan, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 50
  %46 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_issue_pending.i, align 4
  call void %47(ptr noundef %43) #10
  %48 = ptrtoint ptr %nconv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nconv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp40 = icmp eq i32 %49, 1
  br i1 %cmp40, label %land.lhs.true41, label %if.end37.if.else51_crit_edge

if.end37.if.else51_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

land.lhs.true41:                                  ; preds = %if.end37
  %trig42 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %50 = ptrtoint ptr %trig42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trig42, align 4
  %tobool43.not = icmp eq ptr %51, null
  br i1 %tobool43.not, label %if.then44, label %land.lhs.true41.if.else51_crit_edge

land.lhs.true41.if.else51_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

if.then44:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %regmap = getelementptr inbounds %struct.stm32_dfsdm, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %fl_id46 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %fl_id46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fl_id46, align 4
  %mul47 = shl i32 %57, 7
  %add48 = add i32 %mul47, 256
  %call.i105 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %add48, i32 noundef 2097152, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end59

if.else51:                                        ; preds = %land.lhs.true41.if.else51_crit_edge, %if.end37.if.else51_crit_edge
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %regmap53 = getelementptr inbounds %struct.stm32_dfsdm, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %regmap53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap53, align 4
  %fl_id54 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %fl_id54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fl_id54, align 4
  %mul55 = shl i32 %63, 7
  %add56 = add i32 %mul55, 256
  %call.i106 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %add56, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end59

if.end59:                                         ; preds = %if.else51, %if.then44
  %ret.0 = phi i32 [ %call.i106, %if.else51 ], [ %call.i105, %if.then44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp60 = icmp slt i32 %ret.0, 0
  br i1 %cmp60, label %if.end59.err_stop_dma_crit_edge, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.err_stop_dma_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_stop_dma

err_stop_dma:                                     ; preds = %if.end59.err_stop_dma_crit_edge, %if.end32.err_stop_dma_crit_edge
  %ret.1 = phi i32 [ %41, %if.end32.err_stop_dma_crit_edge ], [ %ret.0, %if.end59.err_stop_dma_crit_edge ]
  %64 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_chan, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 47
  %68 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i107 = icmp eq ptr %69, null
  br i1 %tobool.not.i107, label %err_stop_dma.cleanup_crit_edge, label %if.then.i109

err_stop_dma.cleanup_crit_edge:                   ; preds = %err_stop_dma
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i109:                                     ; preds = %err_stop_dma
  call void @__sanitizer_cov_trace_pc() #12
  %call.i108 = call i32 %69(ptr noundef %65) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i109, %err_stop_dma.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %dmaengine_prep_dma_cyclic.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %dmaengine_slave_config.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %dmaengine_slave_config.exit.cleanup_crit_edge ], [ -16, %dmaengine_prep_dma_cyclic.exit.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ], [ %ret.1, %err_stop_dma.cleanup_crit_edge ], [ %ret.1, %if.then.i109 ], [ -38, %if.end19.cleanup_crit_edge ], [ -16, %lor.lhs.false2.i.cleanup_crit_edge ], [ -16, %lor.lhs.false.i.cleanup_crit_edge ], [ -16, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dfsdm_dma_buffer_done(ptr noundef %data) #4 align 64 {
entry:
  %state.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i) #10
  %dma_chan.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 16
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
  %call.i.i = call i32 %10(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.stm32_dfsdm_adc_dma_residue.exit_crit_edge

entry.stm32_dfsdm_adc_dma_residue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_adc_dma_residue.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %state.i, i32 0, i32 2
  %buf_sz.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_sz.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %sub.i = sub i32 %13, %15
  %bufi.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %bufi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %17)
  %cmp2.not.i = icmp ult i32 %sub.i, %17
  %add.i = select i1 %cmp2.not.i, i32 %13, i32 0
  %sub.pn.i = sub i32 %sub.i, %17
  %size.0.i = add i32 %sub.pn.i, %add.i
  br label %stm32_dfsdm_adc_dma_residue.exit

stm32_dfsdm_adc_dma_residue.exit:                 ; preds = %if.then.i, %entry.stm32_dfsdm_adc_dma_residue.exit_crit_edge
  %retval.0.i72 = phi i32 [ %size.0.i, %if.then.i ], [ 0, %entry.stm32_dfsdm_adc_dma_residue.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_dma_buffer_done.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_dma_buffer_done, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !244

if.then:                                          ; preds = %stm32_dfsdm_adc_dma_residue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  %bufi = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %bufi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bufi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dfsdm_dma_buffer_done.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %19, i32 noundef %retval.0.i72) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %stm32_dfsdm_adc_dma_residue.exit
  %bufi5 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %bufi5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bufi5, align 4
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i72, i32 %23)
  %cmp.not77 = icmp slt i32 %retval.0.i72, %23
  br i1 %cmp.not77, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %rx_buf = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 13
  %nconv.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 3
  %fl_id.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 2
  %buf_sz = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 15
  %cb = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 11
  %cb_priv = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 12
  %dev_data = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %old_pos.079 = phi i32 [ %21, %while.body.lr.ph ], [ %old_pos.1, %if.end27.while.body_crit_edge ]
  %available.078 = phi i32 [ %retval.0.i72, %while.body.lr.ph ], [ %sub, %if.end27.while.body_crit_edge ]
  %24 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buf, align 4
  %26 = ptrtoint ptr %bufi5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bufi5, align 4
  %arrayidx = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %nconv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nconv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not12.i = icmp eq i32 %29, 0
  br i1 %tobool.not12.i, label %while.body.stm32_dfsdm_process_data.exit_crit_edge, label %while.body.lr.ph.i

while.body.stm32_dfsdm_process_data.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_process_data.exit

while.body.lr.ph.i:                               ; preds = %while.body
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %fl_list.i = getelementptr inbounds %struct.stm32_dfsdm, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %fl_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fl_list.i, align 4
  %34 = ptrtoint ptr %fl_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fl_id.i, align 4
  %fast.i = getelementptr %struct.stm32_dfsdm_filter, ptr %33, i32 %35, i32 3
  %36 = ptrtoint ptr %fast.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fast.i, align 4
  %max.i = getelementptr %struct.stm32_dfsdm_filter, ptr %33, i32 %35, i32 1, i32 %37, i32 6
  %lshift.i = getelementptr %struct.stm32_dfsdm_filter, ptr %33, i32 %35, i32 1, i32 %37, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec14.in.i = phi i32 [ %29, %while.body.lr.ph.i ], [ %dec14.i, %if.end.i.while.body.i_crit_edge ]
  %ptr.013.i = phi ptr [ %arrayidx, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ]
  %dec14.i = add i32 %dec14.in.i, -1
  %38 = ptrtoint ptr %ptr.013.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr.013.i, align 4
  %and.i = and i32 %39, -256
  store i32 %and.i, ptr %ptr.013.i, align 4
  %40 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %41)
  %cmp.i73 = icmp sgt i32 %and.i, %41
  br i1 %cmp.i73, label %if.then.i75, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i75:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i74 = add i32 %and.i, -1
  %42 = ptrtoint ptr %ptr.013.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.i74, ptr %ptr.013.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i75, %while.body.i.if.end.i_crit_edge
  %43 = ptrtoint ptr %lshift.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lshift.i, align 4
  %45 = ptrtoint ptr %ptr.013.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ptr.013.i, align 4
  %shl.i = shl i32 %46, %44
  store i32 %shl.i, ptr %ptr.013.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %ptr.013.i, i32 1
  %tobool.not.i = icmp eq i32 %dec14.i, 0
  br i1 %tobool.not.i, label %if.end.i.stm32_dfsdm_process_data.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.stm32_dfsdm_process_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_dfsdm_process_data.exit

stm32_dfsdm_process_data.exit:                    ; preds = %if.end.i.stm32_dfsdm_process_data.exit_crit_edge, %while.body.stm32_dfsdm_process_data.exit_crit_edge
  %47 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scan_bytes, align 4
  %sub = sub i32 %available.078, %48
  %49 = ptrtoint ptr %bufi5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bufi5, align 4
  %add = add i32 %50, %48
  store i32 %add, ptr %bufi5, align 4
  %51 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %52)
  %cmp11.not = icmp ult i32 %add, %52
  br i1 %cmp11.not, label %stm32_dfsdm_process_data.exit.if.end23_crit_edge, label %if.then12

stm32_dfsdm_process_data.exit.if.end23_crit_edge: ; preds = %stm32_dfsdm_process_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then12:                                        ; preds = %stm32_dfsdm_process_data.exit
  %53 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cb, align 4
  %tobool13.not = icmp eq ptr %54, null
  br i1 %tobool13.not, label %if.then12.if.end21_crit_edge, label %if.then14

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf, align 4
  %arrayidx17 = getelementptr i8, ptr %56, i32 %old_pos.079
  %sub19 = sub i32 %52, %old_pos.079
  %57 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cb_priv, align 4
  %call20 = call i32 %54(ptr noundef %arrayidx17, i32 noundef %sub19, ptr noundef %58) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.then12.if.end21_crit_edge
  %59 = ptrtoint ptr %bufi5 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %bufi5, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %stm32_dfsdm_process_data.exit.if.end23_crit_edge
  %old_pos.1 = phi i32 [ 0, %if.end21 ], [ %old_pos.079, %stm32_dfsdm_process_data.exit.if.end23_crit_edge ]
  %60 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_data, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp24 = icmp eq i32 %63, 1
  br i1 %cmp24, label %if.then25, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = call i32 @iio_push_to_buffers(ptr noundef %data, ptr noundef %arrayidx) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %64 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %scan_bytes, align 4
  %cmp.not = icmp slt i32 %sub, %65
  br i1 %cmp.not, label %if.end27.while.end_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %do.end.while.end_crit_edge
  %old_pos.0.lcssa = phi i32 [ %21, %do.end.while.end_crit_edge ], [ %old_pos.1, %if.end27.while.end_crit_edge ]
  %cb28 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 11
  %66 = ptrtoint ptr %cb28 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cb28, align 4
  %tobool29.not = icmp eq ptr %67, null
  br i1 %tobool29.not, label %while.end.if.end38_crit_edge, label %if.then30

while.end.if.end38_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %rx_buf32 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 13
  %68 = ptrtoint ptr %rx_buf32 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_buf32, align 4
  %arrayidx33 = getelementptr i8, ptr %69, i32 %old_pos.0.lcssa
  %70 = ptrtoint ptr %bufi5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bufi5, align 4
  %sub35 = sub i32 %71, %old_pos.0.lcssa
  %cb_priv36 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 12
  %72 = ptrtoint ptr %cb_priv36 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cb_priv36, align 4
  %call37 = call i32 %67(ptr noundef %arrayidx33, i32 noundef %sub35, ptr noundef %73) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %while.end.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_audio_init(ptr noundef %dev, ptr noundef %indio_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev1 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 88, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %scan_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %scan_index, align 4
  %call3 = tail call fastcc i32 @stm32_dfsdm_adc_chan_init_one(ptr noundef %indio_dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %info_mask_separate = getelementptr inbounds %struct.iio_chan_spec, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %info_mask_separate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %info_mask_separate, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %ch_list = getelementptr inbounds %struct.stm32_dfsdm, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ch_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_list, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %src = getelementptr %struct.stm32_dfsdm_channel, ptr %7, i32 %9, i32 2
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not = icmp eq i32 %11, 0
  br i1 %cmp7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %spi_master_freq = getelementptr inbounds %struct.stm32_dfsdm, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %spi_master_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spi_master_freq, align 4
  %spi_freq = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %spi_freq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %spi_freq, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %15 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %num_channels, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %channels, align 8
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 8
  %call1.i = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.93) #10
  %dma_chan.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1.i, ptr %dma_chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call1.i to i32
  %21 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dma_chan.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call1.i, align 4
  %dev8.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev8.i, align 4
  %dma_buf.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %18, i32 0, i32 17
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %25, i32 noundef 16384, ptr noundef %dma_buf.i, i32 noundef 3264, i32 noundef 0) #10
  %rx_buf.i = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %18, i32 0, i32 13
  %26 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_chan.i, align 4
  tail call void @dma_release_channel(ptr noundef %28) #10
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %indio_dev, align 8
  %or.i = or i32 %30, 4
  store i32 %or.i, ptr %indio_dev, align 8
  %setup_ops.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 18
  %31 = ptrtoint ptr %setup_ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @stm32_dfsdm_buffer_setup_ops, ptr %setup_ops.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13.i, %if.then11.i, %if.then.i, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %20, %if.then.i ], [ 0, %if.end13.i ], [ -12, %if.then11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @stm32_dfsdm_predisable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp sgt i32 %5, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.022, 1
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %ch_list = getelementptr inbounds %struct.stm32_dfsdm, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ch_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch_list, align 4
  %channel = getelementptr %struct.iio_chan_spec, ptr %9, i32 %i.022, i32 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.stm32_dfsdm_channel, ptr %13, i32 %15
  %call3 = tail call fastcc i32 @stm32_dfsdm_chan_configure(ptr noundef %11, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %17, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.end.cleanup_crit_edge, label %if.then5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @stm32_dfsdm_postenable(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %for.end.cleanup_crit_edge ], [ %call3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !125, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !201, !202, !204, !205, !207, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !230, !231, !232}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !{ptr @__ksymtab_stm32_dfsdm_get_buff_cb, !1, !"__ksymtab_stm32_dfsdm_get_buff_cb", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1093, i32 1}
!2 = !{ptr @__ksymtab_stm32_dfsdm_release_buff_cb, !3, !"__ksymtab_stm32_dfsdm_release_buff_cb", i1 false, i1 false}
!3 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1113, i32 1}
!4 = !{ptr @__initcall__kmod_stm32_dfsdm_adc__366_1680_stm32_dfsdm_adc_driver_init6, !5, !"__initcall__kmod_stm32_dfsdm_adc__366_1680_stm32_dfsdm_adc_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1680, i32 1}
!6 = !{ptr @__exitcall_stm32_dfsdm_adc_driver_exit, !5, !"__exitcall_stm32_dfsdm_adc_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description367, !8, !"__UNIQUE_ID_description367", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1682, i32 1}
!9 = !{ptr @__UNIQUE_ID_author368, !10, !"__UNIQUE_ID_author368", i1 false, i1 false}
!10 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1683, i32 1}
!11 = !{ptr @__UNIQUE_ID_file369, !12, !"__UNIQUE_ID_file369", i1 false, i1 false}
!12 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1684, i32 1}
!13 = !{ptr @__UNIQUE_ID_license370, !12, !"__UNIQUE_ID_license370", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1673, i32 11}
!16 = !{ptr @stm32_dfsdm_adc_driver, !17, !"stm32_dfsdm_adc_driver", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1671, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1538, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stm32_dfsdm_adc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @stm32_dfsdm_adc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1550, i32 43}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1552, i32 3}
!30 = !{ptr @stm32_dfsdm_adc_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stm32_dfsdm_adc_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1561, i32 40}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1564, i32 40}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1579, i32 3}
!38 = !{ptr @stm32_dfsdm_adc_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @stm32_dfsdm_adc_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1583, i32 43}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1585, i32 3}
!44 = !{ptr @stm32_dfsdm_adc_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @stm32_dfsdm_adc_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1591, i32 43}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1607, i32 4}
!50 = !{ptr @stm32_dfsdm_adc_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @stm32_dfsdm_adc_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @stm32_dfsdm_info_audio, !53, !"stm32_dfsdm_info_audio", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1274, i32 30}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1236, i32 4}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @stm32_dfsdm_read_raw._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @stm32_dfsdm_read_raw._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1245, i32 4}
!61 = !{ptr @stm32_dfsdm_read_raw._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @stm32_dfsdm_read_raw._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 480, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @stm32_dfsdm_channels_configure.__UNIQUE_ID_ddebug288, !64, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 155, i32 4}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 156, i32 4}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 157, i32 4}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 158, i32 4}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 159, i32 4}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 160, i32 4}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 161, i32 4}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 162, i32 4}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 163, i32 4}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 164, i32 4}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 165, i32 4}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 166, i32 4}
!92 = !{ptr @stm32_dfsdm_trigs, !93, !"stm32_dfsdm_trigs", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 154, i32 43}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1197, i32 4}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @stm32_dfsdm_write_raw.__UNIQUE_ID_ddebug364, !95, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 325, i32 3}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @stm32_dfsdm_compute_all_osrs._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @stm32_dfsdm_compute_all_osrs._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 201, i32 2}
!105 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @stm32_dfsdm_compute_osrs.__UNIQUE_ID_ddebug236, !104, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 298, i32 5}
!109 = !{ptr @stm32_dfsdm_compute_osrs.__UNIQUE_ID_ddebug237, !108, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 689, i32 3}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @dfsdm_adc_set_samp_freq.__UNIQUE_ID_ddebug341, !111, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 997, i32 2}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @stm32_dfsdm_update_scan_mode.__UNIQUE_ID_ddebug348, !115, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!118 = !{ptr @stm32_dfsdm_info_adc, !119, !"stm32_dfsdm_info_adc", i1 false, i1 false}
!119 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1281, i32 30}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1307, i32 4}
!122 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @stm32_dfsdm_irq._entry, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @stm32_dfsdm_irq._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @stm32_dfsdm_adc_match, !127, !"stm32_dfsdm_adc_match", i1 false, i1 false}
!127 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1513, i32 34}
!128 = !{ptr @stm32h7_dfsdm_adc_data, !129, !"stm32h7_dfsdm_adc_data", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1503, i32 42}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1447, i32 11}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1449, i32 3}
!134 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @stm32_dfsdm_adc_init._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @stm32_dfsdm_adc_init._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1467, i32 4}
!139 = !{ptr @stm32_dfsdm_adc_init._entry.60, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @stm32_dfsdm_adc_init._entry_ptr.62, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1482, i32 11}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1484, i32 3}
!145 = !{ptr @stm32_dfsdm_adc_init.__UNIQUE_ID_ddebug365, !144, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1493, i32 3}
!148 = !{ptr @stm32_dfsdm_adc_init._entry.65, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @stm32_dfsdm_adc_init._entry_ptr.67, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 611, i32 3}
!152 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @stm32_dfsdm_channel_parse_of._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @stm32_dfsdm_channel_parse_of._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 617, i32 3}
!157 = !{ptr @stm32_dfsdm_channel_parse_of._entry.70, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @stm32_dfsdm_channel_parse_of._entry_ptr.72, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 624, i32 10}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 627, i32 3}
!163 = !{ptr @stm32_dfsdm_channel_parse_of._entry.74, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @stm32_dfsdm_channel_parse_of._entry_ptr.76, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 637, i32 10}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 649, i32 10}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 661, i32 7}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 104, i32 4}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 105, i32 4}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 106, i32 4}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 107, i32 4}
!179 = !{ptr @stm32_dfsdm_chan_type, !180, !"stm32_dfsdm_chan_type", i1 false, i1 false}
!180 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 103, i32 43}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 114, i32 4}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 116, i32 4}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 118, i32 4}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 120, i32 4}
!189 = !{ptr @stm32_dfsdm_chan_src, !190, !"stm32_dfsdm_chan_src", i1 false, i1 false}
!190 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 112, i32 43}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1323, i32 11}
!193 = !{ptr @dfsdm_adc_audio_ext_info, !194, !"dfsdm_adc_audio_ext_info", i1 false, i1 false}
!194 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1320, i32 44}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 676, i32 34}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 714, i32 2}
!199 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @dfsdm_adc_audio_set_spiclk._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @dfsdm_adc_audio_set_spiclk._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @init_completion.__key, !203, !"__key", i1 false, i1 false}
!203 = !{!"../include/linux/completion.h", i32 87, i32 2}
!204 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1348, i32 40}
!207 = !{ptr @stm32_dfsdm_buffer_setup_ops, !208, !"stm32_dfsdm_buffer_setup_ops", i1 false, i1 false}
!208 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1061, i32 42}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1022, i32 3}
!211 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @stm32_dfsdm_postenable._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @stm32_dfsdm_postenable._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.97, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1028, i32 3}
!216 = !{ptr @stm32_dfsdm_postenable._entry.96, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @stm32_dfsdm_postenable._entry_ptr.98, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 921, i32 2}
!220 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @stm32_dfsdm_adc_dma_start.__UNIQUE_ID_ddebug347, !219, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!222 = !{ptr @.str.101, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 867, i32 2}
!224 = !{ptr @.str.102, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @stm32_dfsdm_dma_buffer_done.__UNIQUE_ID_ddebug346, !223, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!226 = !{ptr @stm32h7_dfsdm_audio_data, !227, !"stm32h7_dfsdm_audio_data", i1 false, i1 false}
!227 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1508, i32 42}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1419, i32 3}
!230 = !{ptr @stm32_dfsdm_audio_init._entry, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @stm32_dfsdm_audio_init._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @stm32_dfsdm_adc_pm_ops, !233, !"stm32_dfsdm_adc_pm_ops", i1 false, i1 false}
!233 = !{!"../drivers/iio/adc/stm32-dfsdm-adc.c", i32 1668, i32 8}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"min_enum_size", i32 4}
!236 = !{i32 8, !"branch-target-enforcement", i32 0}
!237 = !{i32 8, !"sign-return-address", i32 0}
!238 = !{i32 8, !"sign-return-address-all", i32 0}
!239 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!240 = !{i32 7, !"uwtable", i32 1}
!241 = !{i32 7, !"frame-pointer", i32 2}
!242 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!243 = !{!"auto-init"}
!244 = !{i64 2148374711, i64 2148374716, i64 2148374729, i64 2148374773, i64 2148374807, i64 2148374828}
!245 = !{i32 0, i32 33}
!246 = !{!"branch_weights", i32 1, i32 2000}
