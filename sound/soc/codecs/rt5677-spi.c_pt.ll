; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5677-spi.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5677-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt5677_spi_read\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5677_spi_read\09\09\09\09"
module asm "\09.long\09__crc_rt5677_spi_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5677_spi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5677_spi_read\22\09\09\09\09\09"
module asm "__kstrtabns_rt5677_spi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5677_spi_write\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5677_spi_write\09\09\09\09"
module asm "\09.long\09__crc_rt5677_spi_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5677_spi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5677_spi_write\22\09\09\09\09\09"
module asm "__kstrtabns_rt5677_spi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5677_spi_write_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5677_spi_write_firmware\09\09\09\09"
module asm "\09.long\09__crc_rt5677_spi_write_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5677_spi_write_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5677_spi_write_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_rt5677_spi_write_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5677_spi_hotword_detected\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5677_spi_hotword_detected\09\09\09\09"
module asm "\09.long\09__crc_rt5677_spi_hotword_detected\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5677_spi_hotword_detected:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5677_spi_hotword_detected\22\09\09\09\09\09"
module asm "__kstrtabns_rt5677_spi_hotword_detected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.rt5677_dsp = type { ptr, %struct.delayed_work, %struct.mutex, ptr, i32, i32, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.rt5677_priv = type { ptr, ptr, %struct.rt5677_platform_data, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, i32, [5 x i32], [5 x i32], [5 x i32], i32, i32, i32, ptr, ptr, i32, %struct.gpio_chip, i8, i8, i8, i8, %struct.delayed_work, ptr, %struct.mutex, i32, %struct.delayed_work, i32, ptr }
%struct.rt5677_platform_data = type { i8, i8, i8, i8, i8, i32, [6 x i8], i32, i32, i32, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.105, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.105 = type { ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@g_spi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rt5677_spi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 486, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad read align 0x%x(%zu)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt5677_spi_read\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/rt5677-spi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5677_spi_read._entry_ptr = internal global ptr @rt5677_spi_read._entry, section ".printk_index", align 4
@spi_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @spi_mutex, i64 52), ptr getelementptr (i8, ptr @spi_mutex, i64 52) }, ptr @spi_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_rt5677_spi_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5677_spi_read = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5677_spi_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5677_spi_read to i32), ptr @__kstrtab_rt5677_spi_read, ptr @__kstrtabns_rt5677_spi_read }, section "___ksymtab_gpl+rt5677_spi_read", align 4
@rt5677_spi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 541, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bad write align 0x%x(%zu)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5677_spi_write\00", [47 x i8] zeroinitializer }, align 32
@rt5677_spi_write._entry_ptr = internal global ptr @rt5677_spi_write._entry, section ".printk_index", align 4
@__kstrtab_rt5677_spi_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5677_spi_write = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5677_spi_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5677_spi_write to i32), ptr @__kstrtab_rt5677_spi_write, ptr @__kstrtabns_rt5677_spi_write }, section "___ksymtab_gpl+rt5677_spi_write", align 4
@__kstrtab_rt5677_spi_write_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5677_spi_write_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5677_spi_write_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5677_spi_write_firmware to i32), ptr @__kstrtab_rt5677_spi_write_firmware, ptr @__kstrtabns_rt5677_spi_write_firmware }, section "___ksymtab_gpl+rt5677_spi_write_firmware", align 4
@rt5677_spi_hotword_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't get rt5677_dsp\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rt5677_spi_hotword_detected\00", [36 x i8] zeroinitializer }, align 32
@rt5677_spi_hotword_detected._entry_ptr = internal global ptr @rt5677_spi_hotword_detected._entry, section ".printk_index", align 4
@rt5677_spi_hotword_detected._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 594, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hotword detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt5677_spi_hotword_detected._entry_ptr.12 = internal global ptr @rt5677_spi_hotword_detected._entry.9, section ".printk_index", align 4
@__kstrtab_rt5677_spi_hotword_detected = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5677_spi_hotword_detected = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5677_spi_hotword_detected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5677_spi_hotword_detected to i32), ptr @__kstrtab_rt5677_spi_hotword_detected, ptr @__kstrtabns_rt5677_spi_hotword_detected }, section "___ksymtab_gpl+rt5677_spi_hotword_detected", align 4
@__initcall__kmod_snd_soc_rt5677_spi__304_632_rt5677_spi_driver_init6 = internal global ptr @rt5677_spi_driver_init, section ".initcall6.init", align 4
@rt5677_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @rt5677_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rt5677_spi_driver_exit = internal global ptr @rt5677_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description305 = internal constant [54 x i8] c"snd_soc_rt5677_spi.description=ASoC RT5677 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [62 x i8] c"snd_soc_rt5677_spi.author=Oder Chiou <oder_chiou@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [60 x i8] c"snd_soc_rt5677_spi.file=sound/soc/codecs/snd-soc-rt5677-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [34 x i8] c"snd_soc_rt5677_spi.license=GPL v2\00", section ".modinfo", align 1
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_mutex\00", [22 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rt5677spi\00", [22 x i8] zeroinitializer }, align 32
@rt5677_spi_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.15, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rt5677_spi_pcm_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5677_spi_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5677_spi_pcm_open, ptr @rt5677_spi_pcm_close, ptr null, ptr @rt5677_spi_hw_params, ptr @rt5677_spi_hw_free, ptr @rt5677_spi_prepare, ptr null, ptr null, ptr @rt5677_spi_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5677_spi_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.34, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.35, i64 4, i32 8, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rt5677_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 612, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register component.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5677_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@rt5677_spi_probe._entry_ptr = internal global ptr @rt5677_spi_probe._entry, section ".printk_index", align 4
@rt5677_spi_pcm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&rt5677_dsp->dma_lock\00", [42 x i8] zeroinitializer }, align 32
@rt5677_spi_pcm_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&rt5677_dsp->copy_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@rt5677_spi_pcm_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&rt5677_dsp->copy_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@rt5677_spi_copy_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No pcm substream\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5677_spi_copy_work\00", [43 x i8] zeroinitializer }, align 32
@rt5677_spi_copy_work._entry_ptr = internal global ptr @rt5677_spi_copy_work._entry, section ".printk_index", align 4
@rt5677_spi_copy_work._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No mic_write_offset\0A\00", [43 x i8] zeroinitializer }, align 32
@rt5677_spi_copy_work._entry_ptr.27 = internal global ptr @rt5677_spi_copy_work._entry.25, section ".printk_index", align 4
@rt5677_spi_copy_work._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 357, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Copy failed %d\0A\00", [16 x i8] zeroinitializer }, align 32
@rt5677_spi_copy_work._entry_ptr.30 = internal global ptr @rt5677_spi_copy_work._entry.28, section ".printk_index", align 4
@rt5677_spi_copy_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid copy from (%u, %u), dma_area size %zu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5677_spi_copy_block\00", [42 x i8] zeroinitializer }, align 32
@rt5677_spi_copy_block._entry_ptr = internal global ptr @rt5677_spi_copy_block._entry, section ".printk_index", align 4
@rt5677_spi_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 4, i32 0, i32 0, i32 0, i32 1, i32 1, i32 131072, i32 4096, i32 16384, i32 8, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5677\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5677-dsp-cpu-dai\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSP Capture\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"g_spi\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 58, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 486, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"spi_mutex\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 541, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 589, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 594, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"rt5677_spi_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 625, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 59, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 627, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"rt5677_spi_dai_component\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 398, i32 46 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"rt5677_spi_dai\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 86, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 612, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 391, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 392, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 316, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 323, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 357, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 220, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"rt5677_spi_pcm_hardware\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 72, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 117, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 91, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [33 x i8] c"../sound/soc/codecs/rt5677-spi.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 94, i32 18 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_rt5677_spi_driver_exit, ptr @__initcall__kmod_snd_soc_rt5677_spi__304_632_rt5677_spi_driver_init6, ptr @__ksymtab_rt5677_spi_hotword_detected, ptr @__ksymtab_rt5677_spi_read, ptr @__ksymtab_rt5677_spi_write, ptr @__ksymtab_rt5677_spi_write_firmware, ptr @rt5677_spi_copy_block._entry, ptr @rt5677_spi_copy_block._entry_ptr, ptr @rt5677_spi_copy_work._entry, ptr @rt5677_spi_copy_work._entry.25, ptr @rt5677_spi_copy_work._entry.28, ptr @rt5677_spi_copy_work._entry_ptr, ptr @rt5677_spi_copy_work._entry_ptr.27, ptr @rt5677_spi_copy_work._entry_ptr.30, ptr @rt5677_spi_driver_exit, ptr @rt5677_spi_hotword_detected._entry, ptr @rt5677_spi_hotword_detected._entry.9, ptr @rt5677_spi_hotword_detected._entry_ptr, ptr @rt5677_spi_hotword_detected._entry_ptr.12, ptr @rt5677_spi_probe._entry, ptr @rt5677_spi_probe._entry_ptr, ptr @rt5677_spi_read._entry, ptr @rt5677_spi_read._entry_ptr, ptr @rt5677_spi_write._entry, ptr @rt5677_spi_write._entry_ptr, ptr @g_spi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @spi_mutex, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @rt5677_spi_driver, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rt5677_spi_dai_component, ptr @rt5677_spi_dai, ptr @.str.16, ptr @.str.17, ptr @rt5677_spi_pcm_probe.__key, ptr @.str.18, ptr @rt5677_spi_pcm_probe.__key.19, ptr @.str.20, ptr @rt5677_spi_pcm_probe.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @rt5677_spi_pcm_hardware, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_spi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_hotword_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_hotword_detected._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_pcm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_pcm_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_pcm_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_copy_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_copy_work._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_copy_work._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_copy_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_spi_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5677_spi_read(i32 noundef %addr, ptr nocapture noundef writeonly %rxbuf, i32 noundef %len) #0 align 64 {
entry:
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  %header = alloca [9 x i8], align 1
  %body = alloca [240 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %header) #7
  %0 = getelementptr inbounds [9 x i8], ptr %header, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %header, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %header, i32 0, i32 3
  %3 = getelementptr inbounds [9 x i8], ptr %header, i32 0, i32 4
  %4 = call ptr @memset(ptr %header, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %body) #7
  %5 = call ptr @memset(ptr %body, i32 255, i32 240)
  %6 = load ptr, ptr @g_spi, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = or i32 %len, %addr
  %8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %6, ptr noundef nonnull @.str, i32 noundef %addr, i32 noundef %len) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = getelementptr inbounds i8, ptr %t, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 188)
  %12 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %header, ptr %t, align 4
  %len8 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %13 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %len8, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %14 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6000000, ptr %speed_hz, align 4
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %body, ptr %rx_buf, align 4
  %speed_hz13 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 12
  %16 = ptrtoint ptr %speed_hz13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6000000, ptr %speed_hz13, align 4
  %17 = getelementptr inbounds i8, ptr %m, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end5.spi_message_add_tail.exit.i_crit_edge

if.end5.spi_message_add_tail.exit.i_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m, ptr %prev3.i.i.i.i, align 4
  %26 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i, ptr %m, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end5.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.1, ptr noundef %28, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i.i.1, label %if.end.i.i.i.i.1, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit.i.1_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i.1

if.end.i.i.i.i.1:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.1, ptr %prev.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %m, ptr %transfer_list.i.i.1, align 4
  %prev3.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i.i.1, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.1, ptr %28, align 4
  br label %spi_message_add_tail.exit.i.1

spi_message_add_tail.exit.i.1:                    ; preds = %if.end.i.i.i.i.1, %spi_message_add_tail.exit.i.spi_message_add_tail.exit.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp75.not = icmp eq i32 %len, 0
  br i1 %cmp75.not, label %spi_message_add_tail.exit.i.1.cleanup_crit_edge, label %for.body.lr.ph

spi_message_add_tail.exit.i.1.cleanup_crit_edge:  ; preds = %spi_message_add_tail.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %spi_message_add_tail.exit.i.1
  %len17 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %rt5677_spi_reverse.exit.for.body_crit_edge, %for.body.lr.ph
  %status.077 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %rt5677_spi_reverse.exit.for.body_crit_edge ]
  %offset.076 = phi i32 [ 0, %for.body.lr.ph ], [ %add44, %rt5677_spi_reverse.exit.for.body_crit_edge ]
  %add = add i32 %offset.076, %addr
  %and15 = and i32 %add, 7
  %sub = sub i32 %len, %offset.076
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and15)
  %cmp.i = icmp eq i32 %and15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp1.i = icmp ult i32 %sub, 5
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  %33 = add i32 %sub, 7
  %shl.i = and i32 %33, -8
  %34 = call i32 @llvm.umin.i32(i32 %shl.i, i32 240) #7
  %storemerge.i = select i1 %or.cond.i, i32 4, i32 %34
  %cmd.0.i = select i1 %or.cond.i, i8 2, i8 4
  %35 = ptrtoint ptr %len17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge.i, ptr %len17, align 4
  %36 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %cmd.0.i, ptr %header, align 1
  %shr = lshr i32 %add, 24
  %conv = trunc i32 %shr to i8
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %0, align 1
  %and23 = lshr i32 %add, 16
  %conv25 = trunc i32 %and23 to i8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv25, ptr %1, align 1
  %and28 = lshr i32 %add, 8
  %conv30 = trunc i32 %and28 to i8
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv30, ptr %2, align 1
  %conv35 = trunc i32 %add to i8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv35, ptr %3, align 1
  call void @mutex_lock_nested(ptr noundef nonnull @spi_mutex, i32 noundef 0) #7
  %41 = load ptr, ptr @g_spi, align 4
  %call37 = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %m) #7
  call void @mutex_unlock(ptr noundef nonnull @spi_mutex) #7
  %add.ptr = getelementptr i8, ptr %rxbuf, i32 %offset.076
  %42 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len17, align 4
  %44 = call i32 @llvm.umin.i32(i32 %sub, i32 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp334.not.i = icmp ne i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %exitcond.not.i73 = icmp eq i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %exitcond.not.i73.1 = icmp eq i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %exitcond.not.i73.2 = icmp eq i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %exitcond.not.i73.3 = icmp eq i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %exitcond.not.i73.4 = icmp eq i32 %44, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %exitcond.not.i73.5 = icmp eq i32 %44, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %44)
  %exitcond.not.i73.6 = icmp eq i32 %44, 7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc16.i.for.cond2.preheader.i_crit_edge, %for.body
  %w.037.i = phi i32 [ 0, %for.body ], [ %.pre.i, %for.inc16.i.for.cond2.preheader.i_crit_edge ]
  %.pre.i = add i32 %w.037.i, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %w.037.i, i32 %sub)
  %cmp4.i = icmp ult i32 %w.037.i, %sub
  %or.cond = select i1 %cmp334.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond, label %for.body5.i, label %for.cond2.preheader.i.for.inc16.i_crit_edge

for.cond2.preheader.i.for.inc16.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i:                                      ; preds = %for.cond2.preheader.i
  %sub7.i = add i32 %.pre.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %43)
  %cmp8.i = icmp ult i32 %sub7.i, %43
  br i1 %cmp8.i, label %cond.true9.i, label %for.body5.i.cond.end11.i_crit_edge

for.body5.i.cond.end11.i_crit_edge:               ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i

cond.true9.i:                                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %body, i32 %sub7.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.true9.i, %for.body5.i.cond.end11.i_crit_edge
  %cond12.i = phi i8 [ %46, %cond.true9.i ], [ 0, %for.body5.i.cond.end11.i_crit_edge ]
  %arrayidx15.i = getelementptr i8, ptr %add.ptr, i32 %w.037.i
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %cond12.i, ptr %arrayidx15.i, align 1
  br i1 %exitcond.not.i73, label %cond.end11.i.for.inc16.i_crit_edge, label %land.rhs.i.1

cond.end11.i.for.inc16.i_crit_edge:               ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

land.rhs.i.1:                                     ; preds = %cond.end11.i
  %add.i.1 = add nuw i32 %w.037.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.1, i32 %sub)
  %cmp4.i.1 = icmp ult i32 %add.i.1, %sub
  br i1 %cmp4.i.1, label %for.body5.i.1, label %land.rhs.i.1.for.inc16.i_crit_edge

land.rhs.i.1.for.inc16.i_crit_edge:               ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.1:                                    ; preds = %land.rhs.i.1
  %sub7.i.1 = add i32 %.pre.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.1, i32 %43)
  %cmp8.i.1 = icmp ult i32 %sub7.i.1, %43
  br i1 %cmp8.i.1, label %cond.true9.i.1, label %for.body5.i.1.cond.end11.i.1_crit_edge

for.body5.i.1.cond.end11.i.1_crit_edge:           ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.1

cond.true9.i.1:                                   ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.1 = getelementptr i8, ptr %body, i32 %sub7.i.1
  %48 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.1, align 1
  br label %cond.end11.i.1

cond.end11.i.1:                                   ; preds = %cond.true9.i.1, %for.body5.i.1.cond.end11.i.1_crit_edge
  %cond12.i.1 = phi i8 [ %49, %cond.true9.i.1 ], [ 0, %for.body5.i.1.cond.end11.i.1_crit_edge ]
  %arrayidx15.i.1 = getelementptr i8, ptr %add.ptr, i32 %add.i.1
  %50 = ptrtoint ptr %arrayidx15.i.1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %cond12.i.1, ptr %arrayidx15.i.1, align 1
  br i1 %exitcond.not.i73.1, label %cond.end11.i.1.for.inc16.i_crit_edge, label %land.rhs.i.2

cond.end11.i.1.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

land.rhs.i.2:                                     ; preds = %cond.end11.i.1
  %add.i.2 = add nuw i32 %w.037.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.2, i32 %sub)
  %cmp4.i.2 = icmp ult i32 %add.i.2, %sub
  br i1 %cmp4.i.2, label %for.body5.i.2, label %land.rhs.i.2.for.inc16.i_crit_edge

land.rhs.i.2.for.inc16.i_crit_edge:               ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.2:                                    ; preds = %land.rhs.i.2
  %sub7.i.2 = add i32 %.pre.i, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.2, i32 %43)
  %cmp8.i.2 = icmp ult i32 %sub7.i.2, %43
  br i1 %cmp8.i.2, label %cond.true9.i.2, label %for.body5.i.2.cond.end11.i.2_crit_edge

for.body5.i.2.cond.end11.i.2_crit_edge:           ; preds = %for.body5.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.2

cond.true9.i.2:                                   ; preds = %for.body5.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.2 = getelementptr i8, ptr %body, i32 %sub7.i.2
  %51 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.2, align 1
  br label %cond.end11.i.2

cond.end11.i.2:                                   ; preds = %cond.true9.i.2, %for.body5.i.2.cond.end11.i.2_crit_edge
  %cond12.i.2 = phi i8 [ %52, %cond.true9.i.2 ], [ 0, %for.body5.i.2.cond.end11.i.2_crit_edge ]
  %arrayidx15.i.2 = getelementptr i8, ptr %add.ptr, i32 %add.i.2
  %53 = ptrtoint ptr %arrayidx15.i.2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %cond12.i.2, ptr %arrayidx15.i.2, align 1
  br i1 %exitcond.not.i73.2, label %cond.end11.i.2.for.inc16.i_crit_edge, label %land.rhs.i.3

cond.end11.i.2.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

land.rhs.i.3:                                     ; preds = %cond.end11.i.2
  %add.i.3 = add nuw i32 %w.037.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.3, i32 %sub)
  %cmp4.i.3 = icmp ult i32 %add.i.3, %sub
  br i1 %cmp4.i.3, label %for.body5.i.3, label %land.rhs.i.3.for.inc16.i_crit_edge

land.rhs.i.3.for.inc16.i_crit_edge:               ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.3:                                    ; preds = %land.rhs.i.3
  %sub7.i.3 = add i32 %.pre.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.3, i32 %43)
  %cmp8.i.3 = icmp ult i32 %sub7.i.3, %43
  br i1 %cmp8.i.3, label %cond.true9.i.3, label %for.body5.i.3.cond.end11.i.3_crit_edge

for.body5.i.3.cond.end11.i.3_crit_edge:           ; preds = %for.body5.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.3

cond.true9.i.3:                                   ; preds = %for.body5.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.3 = getelementptr i8, ptr %body, i32 %sub7.i.3
  %54 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.3, align 1
  br label %cond.end11.i.3

cond.end11.i.3:                                   ; preds = %cond.true9.i.3, %for.body5.i.3.cond.end11.i.3_crit_edge
  %cond12.i.3 = phi i8 [ %55, %cond.true9.i.3 ], [ 0, %for.body5.i.3.cond.end11.i.3_crit_edge ]
  %arrayidx15.i.3 = getelementptr i8, ptr %add.ptr, i32 %add.i.3
  %56 = ptrtoint ptr %arrayidx15.i.3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %cond12.i.3, ptr %arrayidx15.i.3, align 1
  br i1 %exitcond.not.i73.3, label %cond.end11.i.3.for.inc16.i_crit_edge, label %land.rhs.i.4

cond.end11.i.3.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

land.rhs.i.4:                                     ; preds = %cond.end11.i.3
  %add.i.4 = add nuw i32 %w.037.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.4, i32 %sub)
  %cmp4.i.4 = icmp ult i32 %add.i.4, %sub
  br i1 %cmp4.i.4, label %for.body5.i.4, label %land.rhs.i.4.for.inc16.i_crit_edge

land.rhs.i.4.for.inc16.i_crit_edge:               ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.4:                                    ; preds = %land.rhs.i.4
  %sub7.i.4 = add i32 %.pre.i, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.4, i32 %43)
  %cmp8.i.4 = icmp ult i32 %sub7.i.4, %43
  br i1 %cmp8.i.4, label %cond.true9.i.4, label %for.body5.i.4.cond.end11.i.4_crit_edge

for.body5.i.4.cond.end11.i.4_crit_edge:           ; preds = %for.body5.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.4

cond.true9.i.4:                                   ; preds = %for.body5.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.4 = getelementptr i8, ptr %body, i32 %sub7.i.4
  %57 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.4, align 1
  br label %cond.end11.i.4

cond.end11.i.4:                                   ; preds = %cond.true9.i.4, %for.body5.i.4.cond.end11.i.4_crit_edge
  %cond12.i.4 = phi i8 [ %58, %cond.true9.i.4 ], [ 0, %for.body5.i.4.cond.end11.i.4_crit_edge ]
  %arrayidx15.i.4 = getelementptr i8, ptr %add.ptr, i32 %add.i.4
  %59 = ptrtoint ptr %arrayidx15.i.4 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %cond12.i.4, ptr %arrayidx15.i.4, align 1
  br i1 %exitcond.not.i73.4, label %cond.end11.i.4.for.inc16.i_crit_edge, label %land.rhs.i.5

cond.end11.i.4.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

land.rhs.i.5:                                     ; preds = %cond.end11.i.4
  %add.i.5 = add nuw i32 %w.037.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.5, i32 %sub)
  %cmp4.i.5 = icmp ult i32 %add.i.5, %sub
  br i1 %cmp4.i.5, label %for.body5.i.5, label %land.rhs.i.5.for.inc16.i_crit_edge

land.rhs.i.5.for.inc16.i_crit_edge:               ; preds = %land.rhs.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.5:                                    ; preds = %land.rhs.i.5
  %sub7.i.5 = add i32 %.pre.i, -6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.5, i32 %43)
  %cmp8.i.5 = icmp ult i32 %sub7.i.5, %43
  br i1 %cmp8.i.5, label %cond.true9.i.5, label %for.body5.i.5.cond.end11.i.5_crit_edge

for.body5.i.5.cond.end11.i.5_crit_edge:           ; preds = %for.body5.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.5

cond.true9.i.5:                                   ; preds = %for.body5.i.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.5 = getelementptr i8, ptr %body, i32 %sub7.i.5
  %60 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.5, align 1
  br label %cond.end11.i.5

cond.end11.i.5:                                   ; preds = %cond.true9.i.5, %for.body5.i.5.cond.end11.i.5_crit_edge
  %cond12.i.5 = phi i8 [ %61, %cond.true9.i.5 ], [ 0, %for.body5.i.5.cond.end11.i.5_crit_edge ]
  %arrayidx15.i.5 = getelementptr i8, ptr %add.ptr, i32 %add.i.5
  %62 = ptrtoint ptr %arrayidx15.i.5 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %cond12.i.5, ptr %arrayidx15.i.5, align 1
  br i1 %exitcond.not.i73.5, label %cond.end11.i.5.for.inc16.i_crit_edge, label %land.rhs.i.6

cond.end11.i.5.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

land.rhs.i.6:                                     ; preds = %cond.end11.i.5
  %add.i.6 = add nuw i32 %w.037.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.6, i32 %sub)
  %cmp4.i.6 = icmp ult i32 %add.i.6, %sub
  br i1 %cmp4.i.6, label %for.body5.i.6, label %land.rhs.i.6.for.inc16.i_crit_edge

land.rhs.i.6.for.inc16.i_crit_edge:               ; preds = %land.rhs.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.6:                                    ; preds = %land.rhs.i.6
  %sub7.i.6 = add i32 %.pre.i, -7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.6, i32 %43)
  %cmp8.i.6 = icmp ult i32 %sub7.i.6, %43
  br i1 %cmp8.i.6, label %cond.true9.i.6, label %for.body5.i.6.cond.end11.i.6_crit_edge

for.body5.i.6.cond.end11.i.6_crit_edge:           ; preds = %for.body5.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.6

cond.true9.i.6:                                   ; preds = %for.body5.i.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.6 = getelementptr i8, ptr %body, i32 %sub7.i.6
  %63 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.6, align 1
  br label %cond.end11.i.6

cond.end11.i.6:                                   ; preds = %cond.true9.i.6, %for.body5.i.6.cond.end11.i.6_crit_edge
  %cond12.i.6 = phi i8 [ %64, %cond.true9.i.6 ], [ 0, %for.body5.i.6.cond.end11.i.6_crit_edge ]
  %arrayidx15.i.6 = getelementptr i8, ptr %add.ptr, i32 %add.i.6
  %65 = ptrtoint ptr %arrayidx15.i.6 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %cond12.i.6, ptr %arrayidx15.i.6, align 1
  br i1 %exitcond.not.i73.6, label %cond.end11.i.6.for.inc16.i_crit_edge, label %land.rhs.i.7

cond.end11.i.6.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

land.rhs.i.7:                                     ; preds = %cond.end11.i.6
  %add.i.7 = add nuw i32 %w.037.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.7, i32 %sub)
  %cmp4.i.7 = icmp ult i32 %add.i.7, %sub
  br i1 %cmp4.i.7, label %for.body5.i.7, label %land.rhs.i.7.for.inc16.i_crit_edge

land.rhs.i.7.for.inc16.i_crit_edge:               ; preds = %land.rhs.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.7:                                    ; preds = %land.rhs.i.7
  %sub7.i.7 = add i32 %.pre.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.7, i32 %43)
  %cmp8.i.7 = icmp ult i32 %sub7.i.7, %43
  br i1 %cmp8.i.7, label %cond.true9.i.7, label %for.body5.i.7.cond.end11.i.7_crit_edge

for.body5.i.7.cond.end11.i.7_crit_edge:           ; preds = %for.body5.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.7

cond.true9.i.7:                                   ; preds = %for.body5.i.7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.7 = getelementptr i8, ptr %body, i32 %sub7.i.7
  %66 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.7, align 1
  br label %cond.end11.i.7

cond.end11.i.7:                                   ; preds = %cond.true9.i.7, %for.body5.i.7.cond.end11.i.7_crit_edge
  %cond12.i.7 = phi i8 [ %67, %cond.true9.i.7 ], [ 0, %for.body5.i.7.cond.end11.i.7_crit_edge ]
  %arrayidx15.i.7 = getelementptr i8, ptr %add.ptr, i32 %add.i.7
  %68 = ptrtoint ptr %arrayidx15.i.7 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %cond12.i.7, ptr %arrayidx15.i.7, align 1
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %cond.end11.i.7, %land.rhs.i.7.for.inc16.i_crit_edge, %cond.end11.i.6.for.inc16.i_crit_edge, %land.rhs.i.6.for.inc16.i_crit_edge, %cond.end11.i.5.for.inc16.i_crit_edge, %land.rhs.i.5.for.inc16.i_crit_edge, %cond.end11.i.4.for.inc16.i_crit_edge, %land.rhs.i.4.for.inc16.i_crit_edge, %cond.end11.i.3.for.inc16.i_crit_edge, %land.rhs.i.3.for.inc16.i_crit_edge, %cond.end11.i.2.for.inc16.i_crit_edge, %land.rhs.i.2.for.inc16.i_crit_edge, %cond.end11.i.1.for.inc16.i_crit_edge, %land.rhs.i.1.for.inc16.i_crit_edge, %cond.end11.i.for.inc16.i_crit_edge, %for.cond2.preheader.i.for.inc16.i_crit_edge
  %cmp1.i74 = icmp ult i32 %.pre.i, %sub
  br i1 %cmp1.i74, label %for.inc16.i.for.cond2.preheader.i_crit_edge, label %rt5677_spi_reverse.exit

for.inc16.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i

rt5677_spi_reverse.exit:                          ; preds = %for.inc16.i
  %or = or i32 %call37, %status.077
  %add44 = add i32 %43, %offset.076
  %cmp = icmp ult i32 %add44, %len
  br i1 %cmp, label %rt5677_spi_reverse.exit.for.body_crit_edge, label %rt5677_spi_reverse.exit.cleanup_crit_edge

rt5677_spi_reverse.exit.cleanup_crit_edge:        ; preds = %rt5677_spi_reverse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rt5677_spi_reverse.exit.for.body_crit_edge:       ; preds = %rt5677_spi_reverse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %rt5677_spi_reverse.exit.cleanup_crit_edge, %spi_message_add_tail.exit.i.1.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %spi_message_add_tail.exit.i.1.cleanup_crit_edge ], [ %or, %rt5677_spi_reverse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %body) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %header) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5677_spi_write(i32 noundef %addr, ptr nocapture noundef readonly %txbuf, i32 noundef %len) #0 align 64 {
entry:
  %t = alloca %struct.spi_transfer, align 4
  %m = alloca %struct.spi_message, align 4
  %buf = alloca [246 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 246, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 246)
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 5
  %1 = load ptr, ptr @g_spi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i32 noundef %addr, i32 noundef %len) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %t, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %5 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6000000, ptr %speed_hz, align 4
  %6 = getelementptr inbounds i8, ptr %m, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end3.spi_message_add_tail.exit.i_crit_edge

if.end3.spi_message_add_tail.exit.i_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i, ptr %m, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end3.spi_message_add_tail.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp62.not = icmp eq i32 %len, 0
  br i1 %cmp62.not, label %spi_message_add_tail.exit.i.cleanup_crit_edge, label %for.body.lr.ph

spi_message_add_tail.exit.i.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %spi_message_add_tail.exit.i
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [246 x i8], ptr %buf, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [246 x i8], ptr %buf, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [246 x i8], ptr %buf, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [246 x i8], ptr %buf, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %rt5677_spi_reverse.exit.for.body_crit_edge, %for.body.lr.ph
  %status.064 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %rt5677_spi_reverse.exit.for.body_crit_edge ]
  %offset.063 = phi i32 [ 0, %for.body.lr.ph ], [ %add29, %rt5677_spi_reverse.exit.for.body_crit_edge ]
  %add = add i32 %offset.063, %addr
  %and5 = and i32 %add, 7
  %sub = sub i32 %len, %offset.063
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and5)
  %cmp.i = icmp eq i32 %and5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp1.i = icmp ult i32 %sub, 5
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  %16 = add i32 %sub, 7
  %shl.i = and i32 %16, -8
  %17 = call i32 @llvm.umin.i32(i32 %shl.i, i32 240) #7
  %storemerge.i = select i1 %or.cond.i, i32 4, i32 %17
  %cond8.i = select i1 %or.cond.i, i8 3, i8 5
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %cond8.i, ptr %buf, align 1
  %shr = lshr i32 %add, 24
  %conv = trunc i32 %shr to i8
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx9, align 1
  %and11 = lshr i32 %add, 16
  %conv13 = trunc i32 %and11 to i8
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %arrayidx14, align 1
  %and16 = lshr i32 %add, 8
  %conv18 = trunc i32 %and16 to i8
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv18, ptr %arrayidx19, align 1
  %conv23 = trunc i32 %add to i8
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv23, ptr %arrayidx24, align 1
  %add.ptr26 = getelementptr i8, ptr %txbuf, i32 %offset.063
  %23 = call i32 @llvm.umin.i32(i32 %storemerge.i, i32 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i)
  %cmp136.not.i = icmp eq i32 %storemerge.i, 0
  br i1 %cmp136.not.i, label %for.body.rt5677_spi_reverse.exit_crit_edge, label %for.cond2.preheader.lr.ph.i

for.body.rt5677_spi_reverse.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt5677_spi_reverse.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp334.not.i = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %exitcond.not.i60.3 = icmp eq i32 %23, 4
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc16.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %w.037.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %.pre.i, %for.inc16.i.for.cond2.preheader.i_crit_edge ]
  %.pre.i = add i32 %w.037.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %w.037.i, i32 %storemerge.i)
  %cmp4.i = icmp ult i32 %w.037.i, %storemerge.i
  %or.cond = select i1 %cmp334.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond, label %for.body5.i, label %for.cond2.preheader.i.for.inc16.i_crit_edge

for.cond2.preheader.i.for.inc16.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i:                                      ; preds = %for.cond2.preheader.i
  %sub7.i = add i32 %.pre.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %sub)
  %cmp8.i = icmp ult i32 %sub7.i, %sub
  br i1 %cmp8.i, label %cond.true9.i, label %for.body5.i.cond.end11.i_crit_edge

for.body5.i.cond.end11.i_crit_edge:               ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i

cond.true9.i:                                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %add.ptr26, i32 %sub7.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.true9.i, %for.body5.i.cond.end11.i_crit_edge
  %cond12.i = phi i8 [ %25, %cond.true9.i ], [ 0, %for.body5.i.cond.end11.i_crit_edge ]
  %arrayidx15.i = getelementptr i8, ptr %add.ptr, i32 %w.037.i
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %cond12.i, ptr %arrayidx15.i, align 1
  %add.i.1 = or i32 %w.037.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.1, i32 %storemerge.i)
  %cmp4.i.1 = icmp ult i32 %add.i.1, %storemerge.i
  br i1 %cmp4.i.1, label %for.body5.i.1, label %cond.end11.i.for.inc16.i_crit_edge

cond.end11.i.for.inc16.i_crit_edge:               ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.1:                                    ; preds = %cond.end11.i
  %sub7.i.1 = add i32 %.pre.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.1, i32 %sub)
  %cmp8.i.1 = icmp ult i32 %sub7.i.1, %sub
  br i1 %cmp8.i.1, label %cond.true9.i.1, label %for.body5.i.1.cond.end11.i.1_crit_edge

for.body5.i.1.cond.end11.i.1_crit_edge:           ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.1

cond.true9.i.1:                                   ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.1 = getelementptr i8, ptr %add.ptr26, i32 %sub7.i.1
  %27 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.1, align 1
  br label %cond.end11.i.1

cond.end11.i.1:                                   ; preds = %cond.true9.i.1, %for.body5.i.1.cond.end11.i.1_crit_edge
  %cond12.i.1 = phi i8 [ %28, %cond.true9.i.1 ], [ 0, %for.body5.i.1.cond.end11.i.1_crit_edge ]
  %arrayidx15.i.1 = getelementptr i8, ptr %add.ptr, i32 %add.i.1
  %29 = ptrtoint ptr %arrayidx15.i.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %cond12.i.1, ptr %arrayidx15.i.1, align 1
  %add.i.2 = or i32 %w.037.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.2, i32 %storemerge.i)
  %cmp4.i.2 = icmp ult i32 %add.i.2, %storemerge.i
  br i1 %cmp4.i.2, label %for.body5.i.2, label %cond.end11.i.1.for.inc16.i_crit_edge

cond.end11.i.1.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.2:                                    ; preds = %cond.end11.i.1
  %sub7.i.2 = add i32 %.pre.i, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.2, i32 %sub)
  %cmp8.i.2 = icmp ult i32 %sub7.i.2, %sub
  br i1 %cmp8.i.2, label %cond.true9.i.2, label %for.body5.i.2.cond.end11.i.2_crit_edge

for.body5.i.2.cond.end11.i.2_crit_edge:           ; preds = %for.body5.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.2

cond.true9.i.2:                                   ; preds = %for.body5.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.2 = getelementptr i8, ptr %add.ptr26, i32 %sub7.i.2
  %30 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.2, align 1
  br label %cond.end11.i.2

cond.end11.i.2:                                   ; preds = %cond.true9.i.2, %for.body5.i.2.cond.end11.i.2_crit_edge
  %cond12.i.2 = phi i8 [ %31, %cond.true9.i.2 ], [ 0, %for.body5.i.2.cond.end11.i.2_crit_edge ]
  %arrayidx15.i.2 = getelementptr i8, ptr %add.ptr, i32 %add.i.2
  %32 = ptrtoint ptr %arrayidx15.i.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %cond12.i.2, ptr %arrayidx15.i.2, align 1
  %add.i.3 = or i32 %w.037.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.3, i32 %storemerge.i)
  %cmp4.i.3 = icmp ult i32 %add.i.3, %storemerge.i
  br i1 %cmp4.i.3, label %for.body5.i.3, label %cond.end11.i.2.for.inc16.i_crit_edge

cond.end11.i.2.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.3:                                    ; preds = %cond.end11.i.2
  %sub7.i.3 = add i32 %.pre.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.3, i32 %sub)
  %cmp8.i.3 = icmp ult i32 %sub7.i.3, %sub
  br i1 %cmp8.i.3, label %cond.true9.i.3, label %for.body5.i.3.cond.end11.i.3_crit_edge

for.body5.i.3.cond.end11.i.3_crit_edge:           ; preds = %for.body5.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.3

cond.true9.i.3:                                   ; preds = %for.body5.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.3 = getelementptr i8, ptr %add.ptr26, i32 %sub7.i.3
  %33 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.3, align 1
  br label %cond.end11.i.3

cond.end11.i.3:                                   ; preds = %cond.true9.i.3, %for.body5.i.3.cond.end11.i.3_crit_edge
  %cond12.i.3 = phi i8 [ %34, %cond.true9.i.3 ], [ 0, %for.body5.i.3.cond.end11.i.3_crit_edge ]
  %arrayidx15.i.3 = getelementptr i8, ptr %add.ptr, i32 %add.i.3
  %35 = ptrtoint ptr %arrayidx15.i.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %cond12.i.3, ptr %arrayidx15.i.3, align 1
  br i1 %exitcond.not.i60.3, label %cond.end11.i.3.for.inc16.i_crit_edge, label %land.rhs.i.4

cond.end11.i.3.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

land.rhs.i.4:                                     ; preds = %cond.end11.i.3
  %add.i.4 = add nuw nsw i32 %w.037.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.4, i32 %storemerge.i)
  %cmp4.i.4 = icmp ult i32 %add.i.4, %storemerge.i
  br i1 %cmp4.i.4, label %for.body5.i.4, label %land.rhs.i.4.for.inc16.i_crit_edge

land.rhs.i.4.for.inc16.i_crit_edge:               ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.4:                                    ; preds = %land.rhs.i.4
  %sub7.i.4 = add i32 %.pre.i, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.4, i32 %sub)
  %cmp8.i.4 = icmp ult i32 %sub7.i.4, %sub
  br i1 %cmp8.i.4, label %cond.true9.i.4, label %for.body5.i.4.cond.end11.i.4_crit_edge

for.body5.i.4.cond.end11.i.4_crit_edge:           ; preds = %for.body5.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.4

cond.true9.i.4:                                   ; preds = %for.body5.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.4 = getelementptr i8, ptr %add.ptr26, i32 %sub7.i.4
  %36 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.4, align 1
  br label %cond.end11.i.4

cond.end11.i.4:                                   ; preds = %cond.true9.i.4, %for.body5.i.4.cond.end11.i.4_crit_edge
  %cond12.i.4 = phi i8 [ %37, %cond.true9.i.4 ], [ 0, %for.body5.i.4.cond.end11.i.4_crit_edge ]
  %arrayidx15.i.4 = getelementptr i8, ptr %add.ptr, i32 %add.i.4
  %38 = ptrtoint ptr %arrayidx15.i.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %cond12.i.4, ptr %arrayidx15.i.4, align 1
  %add.i.5 = add nuw nsw i32 %w.037.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.5, i32 %storemerge.i)
  %cmp4.i.5 = icmp ult i32 %add.i.5, %storemerge.i
  br i1 %cmp4.i.5, label %for.body5.i.5, label %cond.end11.i.4.for.inc16.i_crit_edge

cond.end11.i.4.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.5:                                    ; preds = %cond.end11.i.4
  %sub7.i.5 = add i32 %.pre.i, -6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.5, i32 %sub)
  %cmp8.i.5 = icmp ult i32 %sub7.i.5, %sub
  br i1 %cmp8.i.5, label %cond.true9.i.5, label %for.body5.i.5.cond.end11.i.5_crit_edge

for.body5.i.5.cond.end11.i.5_crit_edge:           ; preds = %for.body5.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.5

cond.true9.i.5:                                   ; preds = %for.body5.i.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.5 = getelementptr i8, ptr %add.ptr26, i32 %sub7.i.5
  %39 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.5, align 1
  br label %cond.end11.i.5

cond.end11.i.5:                                   ; preds = %cond.true9.i.5, %for.body5.i.5.cond.end11.i.5_crit_edge
  %cond12.i.5 = phi i8 [ %40, %cond.true9.i.5 ], [ 0, %for.body5.i.5.cond.end11.i.5_crit_edge ]
  %arrayidx15.i.5 = getelementptr i8, ptr %add.ptr, i32 %add.i.5
  %41 = ptrtoint ptr %arrayidx15.i.5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %cond12.i.5, ptr %arrayidx15.i.5, align 1
  %add.i.6 = add nuw nsw i32 %w.037.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.6, i32 %storemerge.i)
  %cmp4.i.6 = icmp ult i32 %add.i.6, %storemerge.i
  br i1 %cmp4.i.6, label %for.body5.i.6, label %cond.end11.i.5.for.inc16.i_crit_edge

cond.end11.i.5.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.6:                                    ; preds = %cond.end11.i.5
  %sub7.i.6 = add i32 %.pre.i, -7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.6, i32 %sub)
  %cmp8.i.6 = icmp ult i32 %sub7.i.6, %sub
  br i1 %cmp8.i.6, label %cond.true9.i.6, label %for.body5.i.6.cond.end11.i.6_crit_edge

for.body5.i.6.cond.end11.i.6_crit_edge:           ; preds = %for.body5.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.6

cond.true9.i.6:                                   ; preds = %for.body5.i.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.6 = getelementptr i8, ptr %add.ptr26, i32 %sub7.i.6
  %42 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.6, align 1
  br label %cond.end11.i.6

cond.end11.i.6:                                   ; preds = %cond.true9.i.6, %for.body5.i.6.cond.end11.i.6_crit_edge
  %cond12.i.6 = phi i8 [ %43, %cond.true9.i.6 ], [ 0, %for.body5.i.6.cond.end11.i.6_crit_edge ]
  %arrayidx15.i.6 = getelementptr i8, ptr %add.ptr, i32 %add.i.6
  %44 = ptrtoint ptr %arrayidx15.i.6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %cond12.i.6, ptr %arrayidx15.i.6, align 1
  %add.i.7 = add nuw nsw i32 %w.037.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.7, i32 %storemerge.i)
  %cmp4.i.7 = icmp ult i32 %add.i.7, %storemerge.i
  br i1 %cmp4.i.7, label %for.body5.i.7, label %cond.end11.i.6.for.inc16.i_crit_edge

cond.end11.i.6.for.inc16.i_crit_edge:             ; preds = %cond.end11.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i

for.body5.i.7:                                    ; preds = %cond.end11.i.6
  %sub7.i.7 = add i32 %.pre.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.7, i32 %sub)
  %cmp8.i.7 = icmp ult i32 %sub7.i.7, %sub
  br i1 %cmp8.i.7, label %cond.true9.i.7, label %for.body5.i.7.cond.end11.i.7_crit_edge

for.body5.i.7.cond.end11.i.7_crit_edge:           ; preds = %for.body5.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11.i.7

cond.true9.i.7:                                   ; preds = %for.body5.i.7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.7 = getelementptr i8, ptr %add.ptr26, i32 %sub7.i.7
  %45 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.7, align 1
  br label %cond.end11.i.7

cond.end11.i.7:                                   ; preds = %cond.true9.i.7, %for.body5.i.7.cond.end11.i.7_crit_edge
  %cond12.i.7 = phi i8 [ %46, %cond.true9.i.7 ], [ 0, %for.body5.i.7.cond.end11.i.7_crit_edge ]
  %arrayidx15.i.7 = getelementptr i8, ptr %add.ptr, i32 %add.i.7
  %47 = ptrtoint ptr %arrayidx15.i.7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %cond12.i.7, ptr %arrayidx15.i.7, align 1
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %cond.end11.i.7, %cond.end11.i.6.for.inc16.i_crit_edge, %cond.end11.i.5.for.inc16.i_crit_edge, %cond.end11.i.4.for.inc16.i_crit_edge, %land.rhs.i.4.for.inc16.i_crit_edge, %cond.end11.i.3.for.inc16.i_crit_edge, %cond.end11.i.2.for.inc16.i_crit_edge, %cond.end11.i.1.for.inc16.i_crit_edge, %cond.end11.i.for.inc16.i_crit_edge, %for.cond2.preheader.i.for.inc16.i_crit_edge
  %cmp1.i61 = icmp ult i32 %.pre.i, %storemerge.i
  br i1 %cmp1.i61, label %for.inc16.i.for.cond2.preheader.i_crit_edge, label %for.inc16.i.rt5677_spi_reverse.exit_crit_edge

for.inc16.i.rt5677_spi_reverse.exit_crit_edge:    ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt5677_spi_reverse.exit

for.inc16.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i

rt5677_spi_reverse.exit:                          ; preds = %for.inc16.i.rt5677_spi_reverse.exit_crit_edge, %for.body.rt5677_spi_reverse.exit_crit_edge
  %add29 = add i32 %storemerge.i, %offset.063
  %add31 = add nuw nsw i32 %storemerge.i, 6
  %48 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add31, ptr %len6, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @spi_mutex, i32 noundef 0) #7
  %49 = load ptr, ptr @g_spi, align 4
  %call32 = call i32 @spi_sync(ptr noundef %49, ptr noundef nonnull %m) #7
  %or = or i32 %call32, %status.064
  call void @mutex_unlock(ptr noundef nonnull @spi_mutex) #7
  %cmp = icmp ult i32 %add29, %len
  br i1 %cmp, label %rt5677_spi_reverse.exit.for.body_crit_edge, label %rt5677_spi_reverse.exit.cleanup_crit_edge

rt5677_spi_reverse.exit.cleanup_crit_edge:        ; preds = %rt5677_spi_reverse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rt5677_spi_reverse.exit.for.body_crit_edge:       ; preds = %rt5677_spi_reverse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %rt5677_spi_reverse.exit.cleanup_crit_edge, %spi_message_add_tail.exit.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %spi_message_add_tail.exit.i.cleanup_crit_edge ], [ %or, %rt5677_spi_reverse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 246, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5677_spi_write_firmware(i32 noundef %addr, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  %call = tail call i32 @rt5677_spi_write(i32 noundef %addr, ptr noundef %1, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt5677_spi_hotword_detected() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @g_spi, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dma_lock = getelementptr inbounds %struct.rt5677_dsp, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10) #10
  %new_hotword = getelementptr inbounds %struct.rt5677_dsp, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %new_hotword to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %new_hotword, align 4
  tail call void @mutex_unlock(ptr noundef %dma_lock) #7
  %copy_work = getelementptr inbounds %struct.rt5677_dsp, ptr %2, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %copy_work, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @rt5677_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5677_spi_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rt5677_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_probe(ptr noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %spi, ptr @g_spi, align 4
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %spi, ptr noundef nonnull @rt5677_spi_dai_component, ptr noundef nonnull @rt5677_spi_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_pcm_probe(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 216, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @g_spi, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call.i, align 4
  %dma_lock = getelementptr inbounds %struct.rt5677_dsp, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %dma_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @rt5677_spi_pcm_probe.__key) #7
  %copy_work = getelementptr inbounds %struct.rt5677_dsp, ptr %call.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %copy_work, i32 noundef 0) #7
  %4 = ptrtoint ptr %copy_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %copy_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt5677_dsp, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @rt5677_spi_pcm_probe.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry11 = getelementptr inbounds %struct.rt5677_dsp, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.rt5677_dsp, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt5677_dsp, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rt5677_spi_copy_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt5677_dsp, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @rt5677_spi_pcm_probe.__key.21) #7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @rt5677_spi_pcm_hardware) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_pcm_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.33) #7
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i6 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i6, align 4
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i7, align 4
  %copy_work = getelementptr inbounds %struct.rt5677_dsp, ptr %9, i32 0, i32 1
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %copy_work) #7
  %set_dsp_vad = getelementptr inbounds %struct.rt5677_priv, ptr %5, i32 0, i32 31
  %10 = ptrtoint ptr %set_dsp_vad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_dsp_vad, align 4
  %call4 = tail call i32 %11(ptr noundef %call, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_hw_params(ptr nocapture noundef readonly %component, ptr noundef %substream, ptr nocapture noundef readnone %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_lock = getelementptr inbounds %struct.rt5677_dsp, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #7
  %substream1 = getelementptr inbounds %struct.rt5677_dsp, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream1, align 4
  tail call void @mutex_unlock(ptr noundef %dma_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_hw_free(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_lock = getelementptr inbounds %struct.rt5677_dsp, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #7
  %substream1 = getelementptr inbounds %struct.rt5677_dsp, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream1, align 4
  tail call void @mutex_unlock(ptr noundef %dma_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5677_spi_prepare(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.33) #7
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i6 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i6, align 4
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i7, align 4
  %set_dsp_vad = getelementptr inbounds %struct.rt5677_priv, ptr %5, i32 0, i32 31
  %10 = ptrtoint ptr %set_dsp_vad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_dsp_vad, align 4
  %call3 = tail call i32 %11(ptr noundef %call, i1 noundef zeroext true) #7
  %dma_offset = getelementptr inbounds %struct.rt5677_dsp, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma_offset, align 4
  %avail_bytes = getelementptr inbounds %struct.rt5677_dsp, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %avail_bytes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %avail_bytes, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt5677_spi_pcm_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dma_offset = getelementptr inbounds %struct.rt5677_dsp, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_offset, align 4
  %mul.i = shl i32 %7, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5677_spi_copy_work(ptr noundef %work) #0 align 64 {
entry:
  %mic_write_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mic_write_offset) #7
  %0 = ptrtoint ptr %mic_write_offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mic_write_offset, align 4, !annotation !103
  %dma_lock = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #7
  %substream = getelementptr i8, ptr %work, i32 192
  %1 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23) #10
  br label %done

if.end:                                           ; preds = %entry
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %5 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime2, align 4
  %call.i = call i32 @rt5677_spi_read(i32 noundef 1610809344, ptr noundef nonnull %mic_write_offset, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i93, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.end.i93:                                       ; preds = %if.end
  %7 = ptrtoint ptr %mic_write_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mic_write_offset, align 4
  %sub.i = add i32 %8, -4
  store i32 %sub.i, ptr %mic_write_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %sub.i)
  %cmp.i92 = icmp ult i32 %sub.i, 131068
  br i1 %cmp.i92, label %if.end9, label %if.end.i93.do.end7_crit_edge

if.end.i93.do.end7_crit_edge:                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end7:                                          ; preds = %if.end.i93.do.end7_crit_edge, %if.end.do.end7_crit_edge
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.26) #10
  br label %done

if.end9:                                          ; preds = %if.end.i93
  %new_hotword = getelementptr i8, ptr %work, i32 208
  %11 = ptrtoint ptr %new_hotword to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %new_hotword, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %if.then11

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %new_hotword to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %new_hotword, align 4
  %14 = ptrtoint ptr %mic_write_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mic_write_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %15)
  %cmp = icmp ult i32 %15, 65536
  %. = select i1 %cmp, i32 65532, i32 -65536
  %sub14 = add i32 %15, %.
  %mic_read_offset = getelementptr i8, ptr %work, i32 204
  %16 = ptrtoint ptr %mic_read_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub14, ptr %mic_read_offset, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end9.if.end18_crit_edge
  %mic_read_offset19 = getelementptr i8, ptr %work, i32 204
  %17 = ptrtoint ptr %mic_read_offset19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mic_read_offset19, align 4
  %19 = ptrtoint ptr %mic_write_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mic_write_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp20.not = icmp ult i32 %20, %18
  %add = add i32 %20, 131068
  %.pn = select i1 %cmp20.not, i32 %add, i32 %20
  %new_bytes.0 = sub i32 %.pn, %18
  %21 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %substream, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime1.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 21
  %27 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %28, %26
  %div1.i.i = lshr i32 %mul.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_bytes.0)
  %tobool30.not105 = icmp eq i32 %new_bytes.0, 0
  br i1 %tobool30.not105, label %if.end18.if.else.i_crit_edge, label %while.body.lr.ph

if.end18.if.else.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

while.body.lr.ph:                                 ; preds = %if.end18
  %avail_bytes = getelementptr i8, ptr %work, i32 200
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.lr.ph
  %new_bytes.1106 = phi i32 [ %new_bytes.0, %while.body.lr.ph ], [ %sub50, %if.end49.while.body_crit_edge ]
  %29 = ptrtoint ptr %avail_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %avail_bytes, align 4
  %sub31 = sub i32 %div1.i.i, %30
  %31 = tail call i32 @llvm.umin.i32(i32 %new_bytes.1106, i32 %sub31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i95 = icmp eq i32 %31, 0
  br i1 %cmp.i95, label %while.body.if.end41_crit_edge, label %if.end.i97

while.body.if.end41_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end.i97:                                       ; preds = %while.body
  %32 = ptrtoint ptr %mic_read_offset19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mic_read_offset19, align 4
  %add.i = add i32 %33, %31
  %34 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 131068) #7
  %call.i96 = tail call fastcc i32 @rt5677_spi_copy_block(ptr noundef %add.ptr, i32 noundef %33, i32 noundef %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 131067, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 131067
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i97.if.end7.i_crit_edge

if.end.i97.if.end7.i_crit_edge:                   ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i98 = add i32 %add.i, -131068
  %call5.i = tail call fastcc i32 @rt5677_spi_copy_block(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %sub.i98) #7
  %or6.i = or i32 %call5.i, %call.i96
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i97.if.end7.i_crit_edge
  %ret.0.i = phi i32 [ %or6.i, %if.then4.i ], [ %call.i96, %if.end.i97.if.end7.i_crit_edge ]
  %target.0.i = phi i32 [ %sub.i98, %if.then4.i ], [ %add.i, %if.end.i97.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i99 = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i99, label %if.then8.i, label %do.end39

if.then8.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %mic_read_offset19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %target.0.i, ptr %mic_read_offset19, align 4
  br label %if.end41

do.end39:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.29, i32 noundef %ret.0.i) #10
  br label %done

if.end41:                                         ; preds = %if.then8.i, %while.body.if.end41_crit_edge
  %38 = ptrtoint ptr %avail_bytes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %avail_bytes, align 4
  %add43 = add i32 %39, %31
  store i32 %add43, ptr %avail_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %div1.i.i)
  %cmp45.not = icmp ult i32 %add43, %div1.i.i
  br i1 %cmp45.not, label %if.end41.if.end49_crit_edge, label %if.then46

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %41) #7
  %42 = ptrtoint ptr %avail_bytes to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %avail_bytes, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end41.if.end49_crit_edge
  %sub50 = sub i32 %new_bytes.1106, %31
  %tobool30.not = icmp eq i32 %sub50, 0
  br i1 %tobool30.not, label %if.end49.if.else.i_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end49.if.else.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %if.end49.if.else.i_crit_edge, %if.end18.if.else.i_crit_edge
  %mul.i = and i32 %mul.i.i, -8
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 21
  %43 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %44
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 14
  %45 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rate, align 4
  %div = udiv i32 %46, 1000
  %div52 = udiv i32 %div.i, %div
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div52) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %work, i32 noundef %call2.i) #7
  br label %done

done:                                             ; preds = %if.else.i, %do.end39, %do.end7, %do.end
  tail call void @mutex_unlock(ptr noundef %dma_lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mic_write_offset) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5677_spi_copy_block(ptr nocapture noundef %rt5677_dsp, i32 noundef %begin, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rt5677_dsp, ptr %rt5677_dsp, i32 0, i32 3
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_bits.i, align 8
  %div1.i = lshr i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %begin)
  %cmp = icmp ult i32 %end, %begin
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %6 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_bytes, align 4
  %mul = shl nuw nsw i32 %div1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp2 = icmp ult i32 %7, %mul
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %rt5677_dsp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt5677_dsp, align 4
  %dma_bytes3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %10 = ptrtoint ptr %dma_bytes3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_bytes3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.31, i32 noundef %begin, i32 noundef %end, i32 noundef %11) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %begin)
  %cmp4 = icmp eq i32 %end, %begin
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sub = sub i32 %end, %begin
  %sub8 = sub i32 %7, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub8)
  %cmp9 = icmp ugt i32 %sub, %sub8
  %sub13 = sub i32 %end, %sub8
  %spec.select = select i1 %cmp9, i32 %sub13, i32 %begin
  %sub15 = sub i32 %end, %spec.select
  %dma_offset = getelementptr inbounds %struct.rt5677_dsp, ptr %rt5677_dsp, i32 0, i32 4
  %12 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_offset, align 4
  %add = add i32 %13, %sub15
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp17 = icmp ugt i32 %add, %7
  %sub21 = sub i32 %7, %13
  %sub22 = sub i32 %sub15, %sub21
  %first_chunk_len.0 = select i1 %cmp17, i32 %sub21, i32 %sub15
  %second_chunk_len.0 = select i1 %cmp17, i32 %sub22, i32 0
  %add24 = add i32 %spec.select, 1610809348
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %14 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %13
  %call26 = tail call i32 @rt5677_spi_read(i32 noundef %add24, ptr noundef %add.ptr, i32 noundef %first_chunk_len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end28, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_offset, align 4
  %add30 = add i32 %17, %first_chunk_len.0
  store i32 %add30, ptr %dma_offset, align 4
  %18 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %19)
  %cmp33 = icmp eq i32 %add30, %19
  %spec.store.select = select i1 %cmp33, i32 0, i32 %add30
  %20 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %dma_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %second_chunk_len.0)
  %tobool37.not = icmp eq i32 %second_chunk_len.0, 0
  br i1 %tobool37.not, label %if.end28.cleanup_crit_edge, label %if.then38

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %if.end28
  %add40 = add i32 %first_chunk_len.0, %add24
  %21 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_area, align 4
  %call42 = tail call i32 @rt5677_spi_read(i32 noundef %add40, ptr noundef %22, i32 noundef %second_chunk_len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %second_chunk_len.0, ptr %dma_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.then38.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %call26, %if.end6.cleanup_crit_edge ], [ %call42, %if.then38.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_rtdcom_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !36, !38, !40, !41, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 486, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rt5677_spi_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rt5677_spi_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_rt5677_spi_read, !9, !"__ksymtab_rt5677_spi_read", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 519, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 541, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rt5677_spi_write._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @rt5677_spi_write._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_rt5677_spi_write, !16, !"__ksymtab_rt5677_spi_write", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 572, i32 1}
!17 = !{ptr @__ksymtab_rt5677_spi_write_firmware, !18, !"__ksymtab_rt5677_spi_write_firmware", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 578, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 589, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rt5677_spi_hotword_detected._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @rt5677_spi_hotword_detected._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 594, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rt5677_spi_hotword_detected._entry.9, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt5677_spi_hotword_detected._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_rt5677_spi_hotword_detected, !30, !"__ksymtab_rt5677_spi_hotword_detected", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 600, i32 1}
!31 = !{ptr @__initcall__kmod_snd_soc_rt5677_spi__304_632_rt5677_spi_driver_init6, !32, !"__initcall__kmod_snd_soc_rt5677_spi__304_632_rt5677_spi_driver_init6", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 632, i32 1}
!33 = !{ptr @__exitcall_rt5677_spi_driver_exit, !32, !"__exitcall_rt5677_spi_driver_exit", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_description305, !35, !"__UNIQUE_ID_description305", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 634, i32 1}
!36 = !{ptr @__UNIQUE_ID_author306, !37, !"__UNIQUE_ID_author306", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 635, i32 1}
!38 = !{ptr @__UNIQUE_ID_file307, !39, !"__UNIQUE_ID_file307", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 636, i32 1}
!40 = !{ptr @__UNIQUE_ID_license308, !39, !"__UNIQUE_ID_license308", i1 false, i1 false}
!41 = !{ptr @g_spi, !42, !"g_spi", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 58, i32 27}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 59, i32 8}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @spi_mutex, !44, !"spi_mutex", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 627, i32 11}
!49 = !{ptr @rt5677_spi_driver, !50, !"rt5677_spi_driver", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 625, i32 26}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 612, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rt5677_spi_probe._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rt5677_spi_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @rt5677_spi_dai_component, !57, !"rt5677_spi_dai_component", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 398, i32 46}
!58 = !{ptr @rt5677_spi_pcm_probe.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 391, i32 2}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rt5677_spi_pcm_probe.__key.19, !62, !"__key", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 392, i32 2}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rt5677_spi_pcm_probe.__key.21, !62, !"__key", i1 false, i1 false}
!65 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 316, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rt5677_spi_copy_work._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rt5677_spi_copy_work._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 323, i32 3}
!73 = !{ptr @rt5677_spi_copy_work._entry.25, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rt5677_spi_copy_work._entry_ptr.27, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 357, i32 4}
!77 = !{ptr @rt5677_spi_copy_work._entry.28, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rt5677_spi_copy_work._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 220, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rt5677_spi_copy_block._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @rt5677_spi_copy_block._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @rt5677_spi_pcm_hardware, !85, !"rt5677_spi_pcm_hardware", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 72, i32 38}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 117, i32 31}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 91, i32 10}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 94, i32 18}
!92 = !{ptr @rt5677_spi_dai, !93, !"rt5677_spi_dai", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/rt5677-spi.c", i32 86, i32 34}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{i8 0, i8 2}
