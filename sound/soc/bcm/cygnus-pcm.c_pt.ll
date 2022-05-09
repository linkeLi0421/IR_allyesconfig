; ModuleID = '/llk/IR_all_yes/sound/soc/bcm/cygnus-pcm.c_pt.bc'
source_filename = "../sound/soc/bcm/cygnus-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cygnus_audio = type { [4 x %struct.cygnus_aio_port], i32, ptr, ptr, ptr, [3 x ptr], i32, i32 }
%struct.cygnus_aio_port = type { i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cygnus_ssp_regs, %struct.ringbuf_regs, %struct.ringbuf_regs, ptr, ptr, %struct.cygnus_track_clk }
%struct.cygnus_ssp_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ringbuf_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cygnus_track_clk = type { i8, i8, i8, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@cygnus_soc_platform_register.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_cygnus\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cygnus_soc_platform_register\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/bcm/cygnus-pcm.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Enter\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cygnus-audio\00", [19 x i8] zeroinitializer }, align 32
@cygnus_soc_platform_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 739, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s request_irq error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cygnus_soc_platform_register._entry_ptr = internal global ptr @cygnus_soc_platform_register._entry, section ".printk_index", align 4
@cygnus_soc_platform = internal global { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cygnus_dma_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cygnus_pcm_open, ptr @cygnus_pcm_close, ptr null, ptr null, ptr null, ptr @cygnus_pcm_prepare, ptr @cygnus_pcm_trigger, ptr null, ptr @cygnus_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cygnus_soc_platform_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 746, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s failed\0A\00", [21 x i8] zeroinitializer }, align 32
@cygnus_soc_platform_register._entry_ptr.10 = internal global ptr @cygnus_soc_platform_register._entry.8, section ".printk_index", align 4
@__UNIQUE_ID_file249 = internal constant [49 x i8] c"snd_soc_cygnus.file=sound/soc/bcm/snd-soc-cygnus\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [30 x i8] c"snd_soc_cygnus.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [31 x i8] c"snd_soc_cygnus.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [50 x i8] c"snd_soc_cygnus.description=Cygnus ASoC PCM module\00", section ".modinfo", align 1
@handle_playback_irq.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_playback_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Underrun: esr0=0x%x, esr1=0x%x esr3=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@handle_capture_irq.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"handle_capture_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Overflow: esr2=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@cygnus_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 1028, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131072, i32 256, i32 65536, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@cygnus_dma_dmamask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@cygnus_pcm_open.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cygnus_pcm_open\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s port %d\0A\00", [20 x i8] zeroinitializer }, align 32
@cygnus_pcm_close.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cygnus_pcm_close\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s  port %d\0A\00", [19 x i8] zeroinitializer }, align 32
@cygnus_pcm_close.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"freed  port %d\0A\00", [16 x i8] zeroinitializer }, align 32
@cygnus_pcm_prepare.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.16, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cygnus_pcm_prepare\00", [45 x i8] zeroinitializer }, align 32
@cygnus_pcm_prepare.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s (buf_size %lu) (period_size %lu)\0A\00", [59 x i8] zeroinitializer }, align 32
@disable_intr.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s on port %d\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 734, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 737, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 739, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"cygnus_soc_platform\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 720, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 746, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 468, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 529, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"cygnus_pcm_hw\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 183, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"cygnus_dma_dmamask\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 205, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 593, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 626, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 634, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 651, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 656, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [30 x i8] c"../sound/soc/bcm/cygnus-pcm.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 362, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @cygnus_soc_platform_register._entry, ptr @cygnus_soc_platform_register._entry.8, ptr @cygnus_soc_platform_register._entry_ptr, ptr @cygnus_soc_platform_register._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cygnus_soc_platform, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cygnus_pcm_hw, ptr @cygnus_dma_dmamask, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_soc_platform_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_soc_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_soc_platform_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_dma_dmamask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cygnus_soc_platform_register(ptr noundef %dev, ptr noundef %cygaud) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_soc_platform_register.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_soc_platform_register, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_soc_platform_register.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq_num = getelementptr inbounds %struct.cygnus_audio, ptr %cygaud, i32 0, i32 1
  %0 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_num, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull @cygnus_dma_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %cygaud) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %call.i) #8
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %call10 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @cygnus_soc_platform, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end9.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ %call.i, %do.end8 ], [ %call10, %do.end15 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_dma_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !70
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %and = and i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @handle_playback_irq(ptr noundef %data)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %4 = shl nuw nsw i32 %and2, 24
  %5 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %audio, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #5, !srcloc !73
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %and9 = and i32 %3, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @handle_capture_irq(ptr noundef %data)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %7 = shl nuw nsw i32 %and9, 24
  %8 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %audio, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %7) #5, !srcloc !73
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then11 ], [ 1, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cygnus_soc_platform_unregister(ptr nocapture noundef readnone %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_playback_irq(ptr nocapture noundef readonly %cygaud) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %cygaud, i32 0, i32 2
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2304
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %add.ptr4 = getelementptr i8, ptr %1, i32 2316
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %4 = xor i32 %3, -1
  %5 = and i32 %2, %4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr10 = getelementptr i8, ptr %1, i32 2328
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %add.ptr16 = getelementptr i8, ptr %1, i32 2340
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add.ptr24 = getelementptr i8, ptr %1, i32 2376
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %add.ptr30 = getelementptr i8, ptr %1, i32 2388
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %cygaud, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %entry
  %port.093 = phi i32 [ 0, %entry ], [ %inc, %if.end49.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %port.093
  %and36 = and i32 %shl, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool.not = icmp eq i32 %and36, 0
  %and37 = and i32 %shl, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond = select i1 %tobool.not, i1 %tobool38.not, i1 false
  br i1 %or.cond, label %for.body.if.end45_crit_edge, label %do.body

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_playback_irq.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_playback_irq, %if.then44)) #5
          to label %if.end45 [label %if.then44], !srcloc !69

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_playback_irq.__UNIQUE_ID_ddebug241, ptr noundef %18, ptr noundef nonnull @.str.12, i32 noundef %6, i32 noundef %11, i32 noundef %16) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %do.body, %for.body.if.end45_crit_edge
  %and46 = and i32 %shl, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %play_stream = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %port.093, i32 14
  %19 = ptrtoint ptr %play_stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %play_stream, align 4
  tail call fastcc void @cygnus_pcm_period_elapsed(ptr noundef %20)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  %inc = add nuw nsw i32 %port.093, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.body50, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body50:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %add.ptr53 = getelementptr i8, ptr %1, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %5) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %add.ptr57 = getelementptr i8, ptr %1, i32 2336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %10) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %add.ptr61 = getelementptr i8, ptr %1, i32 2384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %15) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %add.ptr65 = getelementptr i8, ptr %1, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %15) #5, !srcloc !73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_capture_irq(ptr nocapture noundef readonly %cygaud) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %cygaud, i32 0, i32 2
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %add.ptr4 = getelementptr i8, ptr %1, i32 2364
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %4 = xor i32 %3, -1
  %5 = and i32 %2, %4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr10 = getelementptr i8, ptr %1, i32 2400
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %add.ptr16 = getelementptr i8, ptr %1, i32 2412
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %cygaud, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %entry
  %port.065 = phi i32 [ 0, %entry ], [ %inc, %if.end33.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %port.065
  %and22 = and i32 %shl, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %for.body.if.end29_crit_edge, label %do.body

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_capture_irq.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_capture_irq, %if.then28)) #5
          to label %if.end29 [label %if.then28], !srcloc !69

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_capture_irq.__UNIQUE_ID_ddebug242, ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef %6) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %do.body, %for.body.if.end29_crit_edge
  %and30 = and i32 %shl, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %capture_stream = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %port.065, i32 15
  %14 = ptrtoint ptr %capture_stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %capture_stream, align 4
  tail call fastcc void @cygnus_pcm_period_elapsed(ptr noundef %15)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  %inc = add nuw nsw i32 %port.065, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.body34, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body34:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %add.ptr37 = getelementptr i8, ptr %1, i32 2360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %5) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %add.ptr41 = getelementptr i8, ptr %1, i32 2408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %10) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %add.ptr45 = getelementptr i8, ptr %1, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %10) #5, !srcloc !73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cygnus_pcm_period_elapsed(ptr noundef %substream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %8 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %play_rb_regs.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 12
  %capture_rb_regs.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 13
  %p_rbuf.0.i = select i1 %cmp.i.i, ptr %play_rb_regs.i, ptr %capture_rb_regs.i
  tail call void @snd_pcm_period_elapsed(ptr noundef %substream) #5
  %9 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %cygaud = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cygaud, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %audio, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %p_rbuf.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_rbuf.0.i, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %18 = xor i32 %17, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cygaud, align 4
  %audio5 = getelementptr inbounds %struct.cygnus_audio, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %audio5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %audio5, align 4
  %wraddr = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %wraddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wraddr, align 4
  %add.ptr6 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %18) #5, !srcloc !73
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wraddr11 = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %wraddr11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wraddr11, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 %26
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cygaud, align 4
  %audio20 = getelementptr inbounds %struct.cygnus_audio, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %audio20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %audio20, align 4
  %32 = ptrtoint ptr %p_rbuf.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p_rbuf.0.i, align 4
  %add.ptr22 = getelementptr i8, ptr %31, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %27) #5, !srcloc !73
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_dma_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dma_mask = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_mask, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cygnus_dma_dmamask, ptr %dma_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %coherent_dma_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool5.not = icmp eq i64 %12, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %14 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm, align 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %15, i32 noundef 2, ptr noundef %17, i32 noundef 131072, i32 noundef 131072) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %10 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %tobool.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_pcm_open.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_pcm_open, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !69

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dais.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cond.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_pcm_open.__UNIQUE_ID_ddebug243, ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %18) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call8 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @cygnus_pcm_hw) #5
  %call9 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 18, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp16 = icmp eq i32 %20, 0
  %play_stream = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 14
  %capture_stream = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 15
  %play_stream.sink = select i1 %cmp16, ptr %play_stream, ptr %capture_stream
  %21 = ptrtoint ptr %play_stream.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %substream, ptr %play_stream.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call9, %do.end.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_pcm_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %8 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_pcm_close.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_pcm_close, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dais.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cond.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_pcm_close.__UNIQUE_ID_ddebug244, ptr noundef %14, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %16) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %17 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  %capture_stream = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 15
  %play_stream = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 14
  %capture_stream.sink = select i1 %cmp, ptr %play_stream, ptr %capture_stream
  %19 = ptrtoint ptr %capture_stream.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %capture_stream.sink, align 4
  %play_stream6 = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 14
  %20 = ptrtoint ptr %play_stream6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %play_stream6, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %land.lhs.true, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

land.lhs.true:                                    ; preds = %do.end
  %capture_stream8 = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 15
  %22 = ptrtoint ptr %capture_stream8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %capture_stream8, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %do.body11, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

do.body11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_pcm_close.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_pcm_close, %if.then23)) #5
          to label %if.end31 [label %if.then23], !srcloc !69

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dais.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev26 = getelementptr inbounds %struct.snd_soc_dai, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev26, align 4
  %30 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cond.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_pcm_close.__UNIQUE_ID_ddebug245, ptr noundef %29, ptr noundef nonnull @.str.19, i32 noundef %31) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %do.body11, %land.lhs.true.if.end31_crit_edge, %do.end.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_pcm_prepare(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %10 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_pcm_prepare.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_pcm_prepare, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dais.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cond.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_pcm_prepare.__UNIQUE_ID_ddebug246, ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.20, i32 noundef %18) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %19 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 21
  %23 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %24, %22
  %div1.i.i = lshr i32 %mul.i.i, 3
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 16
  %25 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %period_size.i, align 4
  %mul.i.i47 = mul i32 %26, %24
  %div1.i.i48 = lshr i32 %mul.i.i47, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_pcm_prepare.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_pcm_prepare, %if.then19)) #5
          to label %do.end25 [label %if.then19], !srcloc !69

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dais.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev22 = getelementptr inbounds %struct.snd_soc_dai, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_pcm_prepare.__UNIQUE_ID_ddebug247, ptr noundef %32, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %div1.i.i, i32 noundef %div1.i.i48) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.end
  %33 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data, align 4
  %dais.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %dais.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dais.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i = icmp eq i32 %40, 0
  %playback_dma_data.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %38, i32 0, i32 7
  %capture_dma_data.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %38, i32 0, i32 8
  %cond.in.i.i.i = select i1 %cmp.i.i.i, ptr %playback_dma_data.i.i.i, ptr %capture_dma_data.i.i.i
  %41 = ptrtoint ptr %cond.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %cond.i.i.i = load ptr, ptr %cond.in.i.i.i, align 4
  br i1 %cmp.i.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end25
  %play_rb_regs.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12
  %42 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cond.i.i.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %43, label %if.then.i.configure_ringbuf_regs.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb19.i
  ]

if.then.i.configure_ringbuf_regs.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %configure_ringbuf_regs.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %play_rb_regs.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1280, ptr %play_rb_regs.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1284, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 2
  %47 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1288, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 3
  %48 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1292, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 4
  %49 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1296, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 5
  %50 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 6
  br label %if.end.sink.split.i

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %play_rb_regs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1328, ptr %play_rb_regs.i, align 4
  %.compoundliteral2.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 1
  %52 = ptrtoint ptr %.compoundliteral2.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1332, ptr %.compoundliteral2.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral2.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 2
  %53 = ptrtoint ptr %.compoundliteral2.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1336, ptr %.compoundliteral2.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral2.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 3
  %54 = ptrtoint ptr %.compoundliteral2.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1340, ptr %.compoundliteral2.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral2.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 4
  %55 = ptrtoint ptr %.compoundliteral2.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1344, ptr %.compoundliteral2.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral2.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 5
  %56 = ptrtoint ptr %.compoundliteral2.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %.compoundliteral2.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral2.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 6
  br label %if.end.sink.split.i

sw.bb10.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %play_rb_regs.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1376, ptr %play_rb_regs.i, align 4
  %.compoundliteral11.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 1
  %58 = ptrtoint ptr %.compoundliteral11.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1380, ptr %.compoundliteral11.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral11.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 2
  %59 = ptrtoint ptr %.compoundliteral11.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1384, ptr %.compoundliteral11.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral11.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 3
  %60 = ptrtoint ptr %.compoundliteral11.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1388, ptr %.compoundliteral11.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral11.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 4
  %61 = ptrtoint ptr %.compoundliteral11.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1392, ptr %.compoundliteral11.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral11.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 5
  %62 = ptrtoint ptr %.compoundliteral11.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %.compoundliteral11.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral11.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 6
  br label %if.end.sink.split.i

sw.bb19.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %play_rb_regs.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1424, ptr %play_rb_regs.i, align 4
  %.compoundliteral20.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 1
  %64 = ptrtoint ptr %.compoundliteral20.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1428, ptr %.compoundliteral20.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral20.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 2
  %65 = ptrtoint ptr %.compoundliteral20.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1432, ptr %.compoundliteral20.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral20.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 3
  %66 = ptrtoint ptr %.compoundliteral20.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1436, ptr %.compoundliteral20.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral20.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 4
  %67 = ptrtoint ptr %.compoundliteral20.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1440, ptr %.compoundliteral20.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral20.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 5
  %68 = ptrtoint ptr %.compoundliteral20.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %.compoundliteral20.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral20.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 12, i32 6
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %do.end25
  %capture_rb_regs.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13
  %69 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cond.i.i.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %70, label %if.else.i.configure_ringbuf_regs.exit_crit_edge [
    i32 0, label %sw.bb29.i
    i32 1, label %sw.bb38.i
    i32 2, label %sw.bb47.i
  ]

if.else.i.configure_ringbuf_regs.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %configure_ringbuf_regs.exit

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %capture_rb_regs.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1472, ptr %capture_rb_regs.i, align 4
  %.compoundliteral30.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 1
  %73 = ptrtoint ptr %.compoundliteral30.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1476, ptr %.compoundliteral30.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral30.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 2
  %74 = ptrtoint ptr %.compoundliteral30.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1480, ptr %.compoundliteral30.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral30.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 3
  %75 = ptrtoint ptr %.compoundliteral30.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1484, ptr %.compoundliteral30.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral30.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 4
  %76 = ptrtoint ptr %.compoundliteral30.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1488, ptr %.compoundliteral30.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral30.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 5
  %77 = ptrtoint ptr %.compoundliteral30.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %.compoundliteral30.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral30.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 6
  br label %if.end.sink.split.i

sw.bb38.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %capture_rb_regs.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1520, ptr %capture_rb_regs.i, align 4
  %.compoundliteral39.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 1
  %79 = ptrtoint ptr %.compoundliteral39.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1524, ptr %.compoundliteral39.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral39.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 2
  %80 = ptrtoint ptr %.compoundliteral39.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1528, ptr %.compoundliteral39.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral39.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 3
  %81 = ptrtoint ptr %.compoundliteral39.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1532, ptr %.compoundliteral39.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral39.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 4
  %82 = ptrtoint ptr %.compoundliteral39.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1536, ptr %.compoundliteral39.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral39.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 5
  %83 = ptrtoint ptr %.compoundliteral39.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %.compoundliteral39.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral39.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 6
  br label %if.end.sink.split.i

sw.bb47.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %capture_rb_regs.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1568, ptr %capture_rb_regs.i, align 4
  %.compoundliteral48.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 1
  %85 = ptrtoint ptr %.compoundliteral48.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1572, ptr %.compoundliteral48.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral48.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 2
  %86 = ptrtoint ptr %.compoundliteral48.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1576, ptr %.compoundliteral48.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral48.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 3
  %87 = ptrtoint ptr %.compoundliteral48.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1580, ptr %.compoundliteral48.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral48.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 4
  %88 = ptrtoint ptr %.compoundliteral48.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1584, ptr %.compoundliteral48.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral48.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 5
  %89 = ptrtoint ptr %.compoundliteral48.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %.compoundliteral48.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral48.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 13, i32 6
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.bb47.i, %sw.bb38.i, %sw.bb29.i, %sw.bb19.i, %sw.bb10.i, %sw.bb1.i, %sw.bb.i
  %.compoundliteral30.sroa.7.0..sroa_idx.sink.i = phi ptr [ %.compoundliteral30.sroa.7.0..sroa_idx.i, %sw.bb29.i ], [ %.compoundliteral39.sroa.7.0..sroa_idx.i, %sw.bb38.i ], [ %.compoundliteral48.sroa.7.0..sroa_idx.i, %sw.bb47.i ], [ %.compoundliteral.sroa.7.0..sroa_idx.i, %sw.bb.i ], [ %.compoundliteral2.sroa.7.0..sroa_idx.i, %sw.bb1.i ], [ %.compoundliteral11.sroa.7.0..sroa_idx.i, %sw.bb10.i ], [ %.compoundliteral20.sroa.7.0..sroa_idx.i, %sw.bb19.i ]
  %90 = ptrtoint ptr %.compoundliteral30.sroa.7.0..sroa_idx.sink.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %.compoundliteral30.sroa.7.0..sroa_idx.sink.i, align 4
  br label %configure_ringbuf_regs.exit

configure_ringbuf_regs.exit:                      ; preds = %if.end.sink.split.i, %if.else.i.configure_ringbuf_regs.exit_crit_edge, %if.then.i.configure_ringbuf_regs.exit_crit_edge
  %91 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %private_data, align 4
  %dais.i.i50 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %dais.i.i50 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dais.i.i50, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %97 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i.i.i52 = icmp eq i32 %98, 0
  %playback_dma_data.i.i.i53 = getelementptr inbounds %struct.snd_soc_dai, ptr %96, i32 0, i32 7
  %capture_dma_data.i.i.i54 = getelementptr inbounds %struct.snd_soc_dai, ptr %96, i32 0, i32 8
  %cond.in.i.i.i55 = select i1 %cmp.i.i.i52, ptr %playback_dma_data.i.i.i53, ptr %capture_dma_data.i.i.i54
  %99 = ptrtoint ptr %cond.in.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %99)
  %cond.i.i.i56 = load ptr, ptr %cond.in.i.i.i55, align 4
  %play_rb_regs.i57 = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i56, i32 0, i32 12
  %capture_rb_regs.i58 = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i56, i32 0, i32 13
  %p_rbuf.0.i = select i1 %cmp.i.i.i52, ptr %play_rb_regs.i57, ptr %capture_rb_regs.i58
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %100 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_addr, align 8
  %cygaud = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 10
  %102 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cygaud, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %audio, align 4
  %period_bytes.i = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 5
  %106 = ptrtoint ptr %period_bytes.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div1.i.i48, ptr %period_bytes.i, align 4
  %buf_size.i = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 6
  %107 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %div1.i.i, ptr %buf_size.i, align 4
  %xor.i = xor i32 %101, -2147483648
  %initial_wr.0.i = select i1 %cmp.i.i.i52, i32 %xor.i, i32 %101
  %add.i = add nsw i32 %div1.i.i, -1
  %sub.i = add i32 %add.i, %101
  %sub1.i = add nsw i32 %div1.i.i48, -256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %108 = tail call i32 @llvm.bswap.i32(i32 %101) #5
  %baseaddr.i = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 2
  %109 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %baseaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %105, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %108) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %111 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #5
  %endaddr.i = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 3
  %112 = ptrtoint ptr %endaddr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %endaddr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %105, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %111) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %114 = tail call i32 @llvm.bswap.i32(i32 %sub1.i) #5
  %fmark.i = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 4
  %115 = ptrtoint ptr %fmark.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fmark.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %105, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %114) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %p_rbuf.0.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %p_rbuf.0.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %105, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %108) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %119 = tail call i32 @llvm.bswap.i32(i32 %initial_wr.0.i) #5
  %wraddr.i = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 1
  %120 = ptrtoint ptr %wraddr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %wraddr.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %105, i32 %121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %119) #5, !srcloc !73
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_pcm_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge3
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge4
  ]

entry.sw.bb1_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %1 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i.i, align 4
  %dais.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %dais.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dais.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %stream.i.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i = icmp eq i32 %8, 0
  %playback_dma_data.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %6, i32 0, i32 7
  %capture_dma_data.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %6, i32 0, i32 8
  %cond.in.i.i.i = select i1 %cmp.i.i.i, ptr %playback_dma_data.i.i.i, ptr %capture_dma_data.i.i.i
  %9 = ptrtoint ptr %cond.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i.i.i = load ptr, ptr %cond.in.i.i.i, align 4
  %10 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cond.i.i.i, align 4
  %shl.i = shl nuw i32 1, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  %cygaud.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cygaud.i, align 4
  %audio.i = getelementptr inbounds %struct.cygnus_audio, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %audio.i, align 4
  br i1 %cmp.i.i.i, label %do.body.i, label %do.body37.i

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %16, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cygaud.i, align 4
  %audio5.i = getelementptr inbounds %struct.cygnus_audio, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %audio5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %audio5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %20, i32 2336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cygaud.i, align 4
  %audio11.i = getelementptr inbounds %struct.cygnus_audio, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %audio11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %audio11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %24, i32 2384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cygaud.i, align 4
  %audio17.i = getelementptr inbounds %struct.cygnus_audio, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %audio17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %audio17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %28, i32 2324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cygaud.i, align 4
  %audio23.i = getelementptr inbounds %struct.cygnus_audio, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %audio23.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %audio23.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %32, i32 2348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cygaud.i, align 4
  %audio29.i = getelementptr inbounds %struct.cygnus_audio, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %audio29.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %audio29.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %36, i32 2396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cygaud.i, align 4
  %audio35.i = getelementptr inbounds %struct.cygnus_audio, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %audio35.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %audio35.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %40, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 184549376) #5, !srcloc !73
  br label %sw.epilog

do.body37.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr42.i = getelementptr i8, ptr %16, i32 2360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cygaud.i, align 4
  %audio47.i = getelementptr inbounds %struct.cygnus_audio, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %audio47.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %audio47.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %44, i32 2408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cygaud.i, align 4
  %audio53.i = getelementptr inbounds %struct.cygnus_audio, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %audio53.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %audio53.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %48, i32 2372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cygaud.i, align 4
  %audio59.i = getelementptr inbounds %struct.cygnus_audio, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %audio59.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %audio59.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %52, i32 2420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %12) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cygaud.i, align 4
  %audio65.i = getelementptr inbounds %struct.cygnus_audio, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %audio65.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %audio65.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %56, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 335544320) #5, !srcloc !73
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge4
  tail call fastcc void @disable_intr(ptr noundef %substream)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %do.body37.i, %do.body.i, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb1 ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body37.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %8 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %play_rb_regs.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 12
  %capture_rb_regs.i = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 13
  %p_rbuf.0.i = select i1 %cmp.i.i, ptr %play_rb_regs.i, ptr %capture_rb_regs.i
  %cygaud = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cygaud, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %audio, align 4
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %p_rbuf.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_rbuf.0.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !70
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wraddr = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %wraddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wraddr, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !70
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cur.0 = phi i32 [ %16, %if.then ], [ %20, %if.else ]
  %cygaud14 = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %cygaud14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cygaud14, align 4
  %audio15 = getelementptr inbounds %struct.cygnus_audio, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %audio15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %audio15, align 4
  %baseaddr = getelementptr inbounds %struct.ringbuf_regs, ptr %p_rbuf.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %baseaddr, align 4
  %add.ptr16 = getelementptr i8, ptr %24, i32 %26
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %28 = and i32 %27, -129
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %sub = sub i32 %cur.0, %29
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %30 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %33
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_intr(ptr nocapture noundef readonly %substream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %8 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_intr.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@disable_intr, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dais.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cond.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_intr.__UNIQUE_ID_ddebug240, ptr noundef %14, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %16) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %17 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cond.i.i, align 4
  %shl = shl nuw i32 1, %18
  %19 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %cygaud = getelementptr inbounds %struct.cygnus_aio_port, ptr %cond.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cygaud, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %audio, align 4
  br i1 %cmp, label %do.body6, label %do.body21

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %25, i32 2320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cygaud, align 4
  %audio13 = getelementptr inbounds %struct.cygnus_audio, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %audio13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %audio13, align 4
  %add.ptr14 = getelementptr i8, ptr %29, i32 2344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %21) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cygaud, align 4
  %audio19 = getelementptr inbounds %struct.cygnus_audio, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %audio19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %audio19, align 4
  %add.ptr20 = getelementptr i8, ptr %33, i32 2392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %21) #5, !srcloc !73
  br label %if.end33

do.body21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr26 = getelementptr i8, ptr %25, i32 2368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %21) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cygaud, align 4
  %audio31 = getelementptr inbounds %struct.cygnus_audio, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %audio31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %audio31, align 4
  %add.ptr32 = getelementptr i8, ptr %37, i32 2416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %21) #5, !srcloc !73
  br label %if.end33

if.end33:                                         ; preds = %do.body21, %do.body6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 734, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cygnus_soc_platform_register.__UNIQUE_ID_ddebug248, !1, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 737, i32 18}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 739, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cygnus_soc_platform_register._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @cygnus_soc_platform_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 746, i32 3}
!16 = !{ptr @cygnus_soc_platform_register._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cygnus_soc_platform_register._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file249, !19, !"__UNIQUE_ID_file249", i1 false, i1 false}
!19 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 758, i32 1}
!20 = !{ptr @__UNIQUE_ID_license250, !19, !"__UNIQUE_ID_license250", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author251, !22, !"__UNIQUE_ID_author251", i1 false, i1 false}
!22 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 759, i32 1}
!23 = !{ptr @__UNIQUE_ID_description252, !24, !"__UNIQUE_ID_description252", i1 false, i1 false}
!24 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 760, i32 1}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 468, i32 4}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @handle_playback_irq.__UNIQUE_ID_ddebug241, !26, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 529, i32 4}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @handle_capture_irq.__UNIQUE_ID_ddebug242, !30, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!33 = !{ptr @cygnus_soc_platform, !34, !"cygnus_soc_platform", i1 false, i1 false}
!34 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 720, i32 40}
!35 = !{ptr @cygnus_pcm_hw, !36, !"cygnus_pcm_hw", i1 false, i1 false}
!36 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 183, i32 38}
!37 = !{ptr @cygnus_dma_dmamask, !38, !"cygnus_dma_dmamask", i1 false, i1 false}
!38 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 205, i32 12}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 593, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cygnus_pcm_open.__UNIQUE_ID_ddebug243, !40, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 626, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cygnus_pcm_close.__UNIQUE_ID_ddebug244, !44, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 634, i32 3}
!49 = !{ptr @cygnus_pcm_close.__UNIQUE_ID_ddebug245, !48, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 651, i32 2}
!52 = !{ptr @cygnus_pcm_prepare.__UNIQUE_ID_ddebug246, !51, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 656, i32 2}
!55 = !{ptr @cygnus_pcm_prepare.__UNIQUE_ID_ddebug247, !54, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/bcm/cygnus-pcm.c", i32 362, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @disable_intr.__UNIQUE_ID_ddebug240, !57, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148508735, i64 2148508740, i64 2148508753, i64 2148508797, i64 2148508831, i64 2148508852}
!70 = !{i64 6271963}
!71 = !{i64 2154888854}
!72 = !{i64 2154890315}
!73 = !{i64 6271545}
!74 = !{i64 2154891484}
!75 = !{i64 2154875948}
!76 = !{i64 2154876436}
!77 = !{i64 2154876924}
!78 = !{i64 2154877412}
!79 = !{i64 2154877900}
!80 = !{i64 2154878388}
!81 = !{i64 2154881277}
!82 = !{i64 2154881702}
!83 = !{i64 2154882127}
!84 = !{i64 2154882552}
!85 = !{i64 2154883238}
!86 = !{i64 2154883726}
!87 = !{i64 2154884214}
!88 = !{i64 2154884702}
!89 = !{i64 2154887298}
!90 = !{i64 2154887723}
!91 = !{i64 2154888148}
!92 = !{i64 2154873952}
!93 = !{i64 2154874263}
!94 = !{i64 2154875023}
!95 = !{i64 2154875258}
!96 = !{i64 2154852878}
!97 = !{i64 2154853292}
!98 = !{i64 2154853703}
!99 = !{i64 2154854132}
!100 = !{i64 2154854565}
!101 = !{i64 2154863002}
!102 = !{i64 2154863443}
!103 = !{i64 2154863884}
!104 = !{i64 2154864325}
!105 = !{i64 2154864766}
!106 = !{i64 2154865601}
!107 = !{i64 2154866726}
!108 = !{i64 2154867167}
!109 = !{i64 2154867608}
!110 = !{i64 2154868298}
!111 = !{i64 2154904719}
!112 = !{i64 2154905277}
!113 = !{i64 2154905843}
!114 = !{i64 2154871873}
!115 = !{i64 2154872306}
!116 = !{i64 2154873172}
