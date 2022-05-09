; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_hdmi_channel_conf = type { i8, i8 }
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
%struct.dw_hdmi_audio_data = type { i32, ptr, i32, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_dw_hdmi = type { ptr, ptr, %struct.spinlock, %struct.dw_hdmi_audio_data, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, [192 x [8 x i8]] }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@__initcall__kmod_dw_hdmi_ahb_audio__238_635_snd_dw_hdmi_driver_init6 = internal global ptr @snd_dw_hdmi_driver_init, section ".initcall6.init", align 4
@snd_dw_hdmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_dw_hdmi_probe, ptr @snd_dw_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snd_dw_hdmi_driver_exit = internal global ptr @snd_dw_hdmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [67 x i8] c"dw_hdmi_ahb_audio.author=Russell King <rmk+kernel@armlinux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [74 x i8] c"dw_hdmi_ahb_audio.description=Synopsis Designware HDMI AHB ALSA interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [73 x i8] c"dw_hdmi_ahb_audio.file=drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [33 x i8] c"dw_hdmi_ahb_audio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [51 x i8] c"dw_hdmi_ahb_audio.alias=platform:dw-hdmi-ahb-audio\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw-hdmi-ahb-audio\00", [46 x i8] zeroinitializer }, align 32
@snd_dw_hdmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dw-hdmi-audio: unknown revision 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_dw_hdmi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_dw_hdmi_probe._entry_ptr = internal global ptr @snd_dw_hdmi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DW-HDMI\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s rev 0x%02x, irq %d\00", [42 x i8] zeroinitializer }, align 32
@snd_dw_hdmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dw->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DW HDMI\00", [24 x i8] zeroinitializer }, align 32
@snd_dw_hdmi_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @dw_hdmi_open, ptr @dw_hdmi_close, ptr @snd_pcm_lib_ioctl, ptr @dw_hdmi_hw_params, ptr @dw_hdmi_hw_free, ptr @dw_hdmi_prepare, ptr @dw_hdmi_trigger, ptr null, ptr @dw_hdmi_pointer, ptr null, ptr null, ptr null, ptr null, ptr @snd_pcm_lib_get_vmalloc_page, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dw_hdmi_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 262208, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 1048576, i32 256, i32 8192, i32 2, i32 16, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw-hdmi-audio\00", [18 x i8] zeroinitializer }, align 32
@default_hdmi_channel_config = internal constant { [7 x %struct.dw_hdmi_channel_conf], [18 x i8] } { [7 x %struct.dw_hdmi_channel_conf] [%struct.dw_hdmi_channel_conf { i8 3, i8 0 }, %struct.dw_hdmi_channel_conf { i8 11, i8 2 }, %struct.dw_hdmi_channel_conf { i8 51, i8 8 }, %struct.dw_hdmi_channel_conf { i8 55, i8 9 }, %struct.dw_hdmi_channel_conf { i8 63, i8 11 }, %struct.dw_hdmi_channel_conf { i8 127, i8 15 }, %struct.dw_hdmi_channel_conf { i8 -1, i8 19 }], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 26]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 26]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 18]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"snd_dw_hdmi_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 626, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 630, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 535, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 546, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 548, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 556, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 558, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"snd_dw_hdmi_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 509, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"dw_hdmi_hw\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 294, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 364, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"default_hdmi_channel_config\00", align 1
@___asan_gen_.63 = private constant [55 x i8] c"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 106, i32 36 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_snd_dw_hdmi_driver_exit, ptr @__initcall__kmod_dw_hdmi_ahb_audio__238_635_snd_dw_hdmi_driver_init6, ptr @snd_dw_hdmi_driver_exit, ptr @snd_dw_hdmi_probe._entry, ptr @snd_dw_hdmi_probe._entry_ptr, ptr @snd_dw_hdmi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @snd_dw_hdmi_probe.__key, ptr @.str.8, ptr @.str.9, ptr @snd_dw_hdmi_ops, ptr @dw_hdmi_hw, ptr @.str.10, ptr @default_hdmi_channel_config], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dw_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dw_hdmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dw_hdmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dw_hdmi_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_hdmi_channel_config to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dw_hdmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_dw_hdmi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_dw_hdmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_dw_hdmi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dw_hdmi_probe(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %4 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #9
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !50
  %base = getelementptr inbounds %struct.dw_hdmi_audio_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 393
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 63) #9, !srcloc !51
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #9, !srcloc !52
  %conv = zext i8 %10 to i32
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %do.end [
    i8 10, label %entry.if.end_crit_edge
    i8 26, label %entry.if.end_crit_edge70
  ]

entry.if.end_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge70
  %call8 = call i32 @snd_card_new(ptr noundef %3, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 1648, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 2
  %call13 = call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 16) #9
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 3
  %call15 = call i32 @strlcpy(ptr noundef %shortname, ptr noundef nonnull @.str.6, i32 noundef 32) #9
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 4
  %shortname17 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 3
  %irq = getelementptr inbounds %struct.dw_hdmi_audio_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.7, ptr noundef %shortname17, i32 noundef %conv, i32 noundef %19)
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %23, align 4
  %data21 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %23, i32 0, i32 3
  %25 = call ptr @memcpy(ptr %data21, ptr %1, i32 20)
  %revision23 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %23, i32 0, i32 13
  %26 = ptrtoint ptr %revision23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %10, ptr %revision23, align 4
  %lock = getelementptr inbounds %struct.snd_dw_hdmi, ptr %23, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @snd_dw_hdmi_probe.__key, i16 noundef signext 3) #9
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %call28 = call i32 @snd_pcm_new(ptr noundef %28, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end12.err_crit_edge, label %if.end32

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end32:                                         ; preds = %if.end12
  %29 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcm, align 4
  %pcm33 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %pcm33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %pcm33, align 4
  %private_data34 = getelementptr inbounds %struct.snd_pcm, ptr %30, i32 0, i32 11
  %32 = ptrtoint ptr %private_data34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %23, ptr %private_data34, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %30, i32 0, i32 7
  %call36 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 80) #9
  %33 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %34, i32 noundef 0, ptr noundef nonnull @snd_dw_hdmi_ops) #9
  %35 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_lib_preallocate_pages_for_all(ptr noundef %36, i32 noundef 2, ptr noundef %3, i32 noundef 131072, i32 noundef 1048576) #9
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %call37 = call i32 @snd_card_register(ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end32.err_crit_edge, label %if.end41

if.end32.err_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %23, ptr %driver_data.i.i, align 4
  br label %cleanup

err:                                              ; preds = %if.end32.err_crit_edge, %if.end12.err_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end12.err_crit_edge ], [ %call37, %if.end32.err_crit_edge ]
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %call42 = call i32 @snd_card_free(ptr noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end41, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %ret.0, %err ], [ 0, %if.end41 ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dw_hdmi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_lib_preallocate_pages_for_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_open(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %base2 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @dw_hdmi_hw, i32 64)
  %get_eld = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %get_eld to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_eld, align 4
  %hdmi = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdmi, align 4
  %call = tail call ptr %8(ptr noundef %10) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @snd_pcm_hw_constraint_eld(ptr noundef %1, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %bytes = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 3
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes, align 4
  %call16 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %1, i32 noundef 17, i32 noundef 0, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %add.ptr = getelementptr i8, ptr %5, i32 13824
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #9, !srcloc !51
  %add.ptr20 = getelementptr i8, ptr %5, i32 13845
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 -1) #9, !srcloc !51
  %add.ptr21 = getelementptr i8, ptr %5, i32 13850
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 -1) #9, !srcloc !51
  %add.ptr22 = getelementptr i8, ptr %5, i32 13844
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 -1) #9, !srcloc !51
  %add.ptr23 = getelementptr i8, ptr %5, i32 265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 -1) #9, !srcloc !51
  %irq = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call.i59 = tail call i32 @request_threaded_irq(i32 noundef %14, ptr noundef nonnull @snd_dw_hdmi_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool26.not = icmp eq i32 %call.i59, 0
  br i1 %tobool26.not, label %if.end28, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr29 = getelementptr i8, ptr %5, i32 393
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 59) #9, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call5, %if.then.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call.i59, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %base = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 393
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 63) #9, !srcloc !51
  %irq = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 10
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %call.i = tail call i32 @_snd_pcm_lib_alloc_vmalloc_buffer(ptr noundef %substream, i32 noundef %1, i32 noundef 3522) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_hw_free(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_pcm_lib_free_vmalloc_buffer(ptr noundef %substream) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %cs.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %revision = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 10, label %sw.bb
    i8 26, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  %. = select i1 %cmp, i8 126, i8 124
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %threshold.0 = phi i8 [ %., %sw.bb ], [ -128, %entry.sw.epilog_crit_edge ]
  %conf0.0 = phi i8 [ 9, %sw.bb ], [ 11, %entry.sw.epilog_crit_edge ]
  %hdmi = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdmi, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate, align 4
  tail call void @dw_hdmi_set_sample_rate(ptr noundef %10, i32 noundef %12) #9
  %conv4 = zext i8 %threshold.0 to i32
  %mul = shl nuw nsw i32 %conv4, 5
  %fifo_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 12
  %13 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %fifo_size, align 8
  %channels7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %channels7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channels7, align 8
  %sub = add i32 %15, -2
  %arrayidx = getelementptr [7 x %struct.dw_hdmi_channel_conf], ptr @default_hdmi_channel_config, i32 0, i32 %sub
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %ca12 = getelementptr [7 x %struct.dw_hdmi_channel_conf], ptr @default_hdmi_channel_config, i32 0, i32 %sub, i32 1
  %18 = ptrtoint ptr %ca12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ca12, align 1
  %base = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 13827
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %threshold.0) #9, !srcloc !51
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %23, i32 13824
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %conf0.0) #9, !srcloc !51
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %25, i32 13846
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 %17) #9, !srcloc !51
  %26 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdmi, align 4
  %28 = ptrtoint ptr %channels7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels7, align 8
  tail call void @dw_hdmi_set_channel_count(ptr noundef %27, i32 noundef %29) #9
  %30 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdmi, align 4
  %conv25 = zext i8 %19 to i32
  tail call void @dw_hdmi_set_channel_allocation(ptr noundef %31, i32 noundef %conv25) #9
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %33, label %sw.epilog.sw.epilog29_crit_edge [
    i32 18, label %sw.epilog.sw.epilog29.sink.split_crit_edge
    i32 6, label %sw.bb27
  ]

sw.epilog.sw.epilog29.sink.split_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog29.sink.split

sw.epilog.sw.epilog29_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog29

sw.bb27:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #9
  %35 = getelementptr inbounds [4 x i8], ptr %cs.i, i32 0, i32 1
  %36 = getelementptr inbounds [4 x i8], ptr %cs.i, i32 0, i32 2
  %37 = getelementptr inbounds [4 x i8], ptr %cs.i, i32 0, i32 3
  %38 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %cs.i, align 4
  %call.i = call i32 @snd_pcm_create_iec958_consumer(ptr noundef %1, ptr noundef nonnull %cs.i, i32 noundef 4) #9
  %cs1.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15
  %39 = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 16
  %40 = call ptr @memset(ptr %39, i32 0, i32 1408)
  %41 = ptrtoint ptr %cs.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cs.i, align 4
  %43 = shl i8 %42, 2
  %conv19.i = and i8 %43, 4
  %44 = shl i8 %42, 1
  %conv19.1.i = and i8 %44, 4
  %conv19.2.i = and i8 %42, 4
  %45 = lshr i8 %42, 1
  %conv19.3.i = and i8 %45, 4
  %46 = lshr i8 %42, 2
  %conv19.4.i = and i8 %46, 4
  %47 = lshr i8 %42, 3
  %conv19.5.i = and i8 %47, 4
  %48 = lshr i8 %42, 4
  %conv19.6.i = and i8 %48, 4
  %49 = lshr i8 %42, 5
  %50 = and i8 %49, 4
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %35, align 1
  %53 = shl i8 %52, 2
  %conv19.151.i = and i8 %53, 4
  %54 = shl i8 %52, 1
  %conv19.1.1.i = and i8 %54, 4
  %conv19.2.1.i = and i8 %52, 4
  %55 = lshr i8 %52, 1
  %conv19.3.1.i = and i8 %55, 4
  %56 = lshr i8 %52, 2
  %conv19.4.1.i = and i8 %56, 4
  %57 = lshr i8 %52, 3
  %conv19.5.1.i = and i8 %57, 4
  %58 = lshr i8 %52, 4
  %conv19.6.1.i = and i8 %58, 4
  %59 = lshr i8 %52, 5
  %60 = and i8 %59, 4
  %61 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %37, align 1
  %63 = shl i8 %62, 2
  %conv19.357.i = and i8 %63, 4
  %64 = shl i8 %62, 1
  %conv19.1.3.i = and i8 %64, 4
  %conv19.2.3.i = and i8 %62, 4
  %65 = lshr i8 %62, 1
  %conv19.3.3.i = and i8 %65, 4
  %66 = lshr i8 %62, 2
  %conv19.4.3.i = and i8 %66, 4
  %67 = lshr i8 %62, 3
  %conv19.5.3.i = and i8 %67, 4
  %68 = lshr i8 %62, 4
  %conv19.6.3.i = and i8 %68, 4
  %69 = lshr i8 %62, 5
  %70 = and i8 %69, 4
  %71 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %71)
  %.promoted.i = load i8, ptr %36, align 2
  %72 = zext i8 %conv19.i to i32
  %73 = call ptr @memset(ptr %cs1.i, i32 %72, i32 8)
  %uglygep75 = getelementptr i8, ptr %3, i32 118
  %74 = zext i8 %conv19.1.i to i32
  %75 = call ptr @memset(ptr %uglygep75, i32 %74, i32 8)
  %uglygep76 = getelementptr i8, ptr %3, i32 126
  %76 = zext i8 %conv19.2.i to i32
  %77 = call ptr @memset(ptr %uglygep76, i32 %76, i32 8)
  %uglygep77 = getelementptr i8, ptr %3, i32 134
  %78 = zext i8 %conv19.3.i to i32
  %79 = call ptr @memset(ptr %uglygep77, i32 %78, i32 8)
  %uglygep78 = getelementptr i8, ptr %3, i32 142
  %80 = zext i8 %conv19.4.i to i32
  %81 = call ptr @memset(ptr %uglygep78, i32 %80, i32 8)
  %uglygep79 = getelementptr i8, ptr %3, i32 150
  %82 = zext i8 %conv19.5.i to i32
  %83 = call ptr @memset(ptr %uglygep79, i32 %82, i32 8)
  %uglygep80 = getelementptr i8, ptr %3, i32 158
  %84 = zext i8 %conv19.6.i to i32
  %85 = call ptr @memset(ptr %uglygep80, i32 %84, i32 8)
  %uglygep81 = getelementptr i8, ptr %3, i32 166
  %86 = zext i8 %50 to i32
  %87 = call ptr @memset(ptr %uglygep81, i32 %86, i32 8)
  %uglygep82 = getelementptr i8, ptr %3, i32 174
  %88 = zext i8 %conv19.151.i to i32
  %89 = call ptr @memset(ptr %uglygep82, i32 %88, i32 8)
  %uglygep83 = getelementptr i8, ptr %3, i32 182
  %90 = zext i8 %conv19.1.1.i to i32
  %91 = call ptr @memset(ptr %uglygep83, i32 %90, i32 8)
  %uglygep84 = getelementptr i8, ptr %3, i32 190
  %92 = zext i8 %conv19.2.1.i to i32
  %93 = call ptr @memset(ptr %uglygep84, i32 %92, i32 8)
  %uglygep85 = getelementptr i8, ptr %3, i32 198
  %94 = zext i8 %conv19.3.1.i to i32
  %95 = call ptr @memset(ptr %uglygep85, i32 %94, i32 8)
  %uglygep86 = getelementptr i8, ptr %3, i32 206
  %96 = zext i8 %conv19.4.1.i to i32
  %97 = call ptr @memset(ptr %uglygep86, i32 %96, i32 8)
  %uglygep87 = getelementptr i8, ptr %3, i32 214
  %98 = zext i8 %conv19.5.1.i to i32
  %99 = call ptr @memset(ptr %uglygep87, i32 %98, i32 8)
  %uglygep88 = getelementptr i8, ptr %3, i32 222
  %100 = zext i8 %conv19.6.1.i to i32
  %101 = call ptr @memset(ptr %uglygep88, i32 %100, i32 8)
  %uglygep89 = getelementptr i8, ptr %3, i32 230
  %102 = zext i8 %60 to i32
  %103 = call ptr @memset(ptr %uglygep89, i32 %102, i32 8)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb27
  %104 = phi i8 [ %.promoted.i, %sw.bb27 ], [ %conv6.i, %for.body.i.for.body.i_crit_edge ]
  %ch.050.i = phi i32 [ 0, %sw.bb27 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %105 = and i8 %104, 15
  %add.i = add nuw nsw i32 %ch.050.i, 1
  %add.tr.i = trunc i32 %add.i to i8
  %106 = shl nuw i8 %add.tr.i, 4
  %conv6.i = or i8 %106, %105
  %107 = shl nuw nsw i8 %105, 2
  %conv19.254.i = and i8 %107, 4
  %arrayidx23.255.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 16, i32 %ch.050.i
  %108 = ptrtoint ptr %arrayidx23.255.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv19.254.i, ptr %arrayidx23.255.i, align 1
  %109 = shl nuw nsw i8 %105, 1
  %conv19.1.2.i = and i8 %109, 4
  %arrayidx23.1.2.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 17, i32 %ch.050.i
  %110 = ptrtoint ptr %arrayidx23.1.2.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv19.1.2.i, ptr %arrayidx23.1.2.i, align 1
  %conv19.2.2.i = and i8 %104, 4
  %arrayidx23.2.2.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 18, i32 %ch.050.i
  %111 = ptrtoint ptr %arrayidx23.2.2.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv19.2.2.i, ptr %arrayidx23.2.2.i, align 1
  %112 = lshr i8 %104, 1
  %conv19.3.2.i = and i8 %112, 4
  %arrayidx23.3.2.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 19, i32 %ch.050.i
  %113 = ptrtoint ptr %arrayidx23.3.2.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv19.3.2.i, ptr %arrayidx23.3.2.i, align 1
  %114 = shl i8 %add.tr.i, 2
  %conv19.4.2.i = and i8 %114, 4
  %arrayidx23.4.2.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 20, i32 %ch.050.i
  %115 = ptrtoint ptr %arrayidx23.4.2.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv19.4.2.i, ptr %arrayidx23.4.2.i, align 1
  %116 = shl i8 %add.tr.i, 1
  %conv19.5.2.i = and i8 %116, 4
  %arrayidx23.5.2.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 21, i32 %ch.050.i
  %117 = ptrtoint ptr %arrayidx23.5.2.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv19.5.2.i, ptr %arrayidx23.5.2.i, align 1
  %conv19.6.2.i = and i8 %add.tr.i, 4
  %arrayidx23.6.2.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 22, i32 %ch.050.i
  %118 = ptrtoint ptr %arrayidx23.6.2.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv19.6.2.i, ptr %arrayidx23.6.2.i, align 1
  %119 = lshr i8 %add.tr.i, 1
  %conv19.7.2.i = and i8 %119, 4
  %arrayidx23.7.2.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 23, i32 %ch.050.i
  %120 = ptrtoint ptr %arrayidx23.7.2.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv19.7.2.i, ptr %arrayidx23.7.2.i, align 1
  %arrayidx23.358.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 24, i32 %ch.050.i
  %121 = ptrtoint ptr %arrayidx23.358.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv19.357.i, ptr %arrayidx23.358.i, align 1
  %arrayidx23.1.3.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 25, i32 %ch.050.i
  %122 = ptrtoint ptr %arrayidx23.1.3.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv19.1.3.i, ptr %arrayidx23.1.3.i, align 1
  %arrayidx23.2.3.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 26, i32 %ch.050.i
  %123 = ptrtoint ptr %arrayidx23.2.3.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv19.2.3.i, ptr %arrayidx23.2.3.i, align 1
  %arrayidx23.3.3.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 27, i32 %ch.050.i
  %124 = ptrtoint ptr %arrayidx23.3.3.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv19.3.3.i, ptr %arrayidx23.3.3.i, align 1
  %arrayidx23.4.3.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 28, i32 %ch.050.i
  %125 = ptrtoint ptr %arrayidx23.4.3.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv19.4.3.i, ptr %arrayidx23.4.3.i, align 1
  %arrayidx23.5.3.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 29, i32 %ch.050.i
  %126 = ptrtoint ptr %arrayidx23.5.3.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv19.5.3.i, ptr %arrayidx23.5.3.i, align 1
  %arrayidx23.6.3.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 30, i32 %ch.050.i
  %127 = ptrtoint ptr %arrayidx23.6.3.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv19.6.3.i, ptr %arrayidx23.6.3.i, align 1
  %arrayidx23.7.3.i = getelementptr %struct.snd_dw_hdmi, ptr %3, i32 0, i32 15, i32 31, i32 %ch.050.i
  %128 = ptrtoint ptr %arrayidx23.7.3.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %70, ptr %arrayidx23.7.3.i, align 1
  %exitcond.not.i = icmp eq i32 %add.i, 8
  br i1 %exitcond.not.i, label %dw_hdmi_create_cs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

dw_hdmi_create_cs.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %cs1.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %cs1.i, align 2
  %131 = or i8 %130, 16
  store i8 %131, ptr %cs1.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #9
  br label %sw.epilog29.sink.split

sw.epilog29.sink.split:                           ; preds = %dw_hdmi_create_cs.exit, %sw.epilog.sw.epilog29.sink.split_crit_edge
  %dw_hdmi_reformat_s24.sink = phi ptr [ @dw_hdmi_reformat_s24, %dw_hdmi_create_cs.exit ], [ @dw_hdmi_reformat_iec958, %sw.epilog.sw.epilog29.sink.split_crit_edge ]
  %reformat28 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 5
  %132 = ptrtoint ptr %reformat28 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %dw_hdmi_reformat_s24.sink, ptr %reformat28, align 4
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %sw.epilog29.sink.split, %sw.epilog.sw.epilog29_crit_edge
  %iec_offset = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 14
  %133 = ptrtoint ptr %iec_offset to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %iec_offset, align 1
  %134 = ptrtoint ptr %channels7 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %channels7, align 8
  %channels31 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 12
  %136 = ptrtoint ptr %channels31 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %channels31, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %137 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_area, align 4
  %buf_src = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 6
  %139 = ptrtoint ptr %buf_src to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %buf_src, align 4
  %area = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 1
  %140 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %area, align 4
  %buf_dst = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 7
  %142 = ptrtoint ptr %buf_dst to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %buf_dst, align 4
  %addr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 2
  %143 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %addr, align 4
  %buf_addr = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 8
  %145 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %buf_addr, align 4
  %146 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %147, i32 0, i32 16
  %148 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %147, i32 0, i32 21
  %150 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %151, %149
  %div1.i.i = lshr i32 %mul.i.i, 3
  %buf_period = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 10
  %152 = ptrtoint ptr %buf_period to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %div1.i.i, ptr %buf_period, align 4
  %153 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %153, i32 0, i32 18
  %154 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i72 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %153, i32 0, i32 21
  %156 = ptrtoint ptr %frame_bits.i.i72 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %frame_bits.i.i72, align 8
  %mul.i.i73 = mul i32 %157, %155
  %div1.i.i74 = lshr i32 %mul.i.i73, 3
  %buf_size = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 11
  %158 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %div1.i.i74, ptr %buf_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog29 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %do.body1
    i32 0, label %do.body10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %buf_offset = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %buf_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf_offset, align 4
  %substream5 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %substream5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream5, align 4
  %base1.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base1.i, align 4
  %buf_period.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %buf_period.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_period.i, align 4
  %reformat.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %reformat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reformat.i, align 4
  tail call void %10(ptr noundef %1, i32 noundef 0, i32 noundef %8) #9
  %add.ptr.i = getelementptr i8, ptr %6, i32 265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 63) #9, !srcloc !51
  %buf_addr.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_addr.i, align 4
  %add2.i = add i32 %8, -1
  %sub.i = add i32 %add2.i, %12
  %add.ptr3.i = getelementptr i8, ptr %6, i32 13828
  %conv.i.i = trunc i32 %12 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv.i.i) #9, !srcloc !51
  %shr.i.i = lshr i32 %12, 8
  %conv1.i.i = trunc i32 %shr.i.i to i8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 13829
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv1.i.i) #9, !srcloc !51
  %shr2.i.i = lshr i32 %12, 16
  %conv3.i.i = trunc i32 %shr2.i.i to i8
  %add.ptr4.i.i = getelementptr i8, ptr %6, i32 13830
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 %conv3.i.i) #9, !srcloc !51
  %shr5.i.i = lshr i32 %12, 24
  %conv6.i.i = trunc i32 %shr5.i.i to i8
  %add.ptr7.i.i = getelementptr i8, ptr %6, i32 13831
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i, i8 %conv6.i.i) #9, !srcloc !51
  %add.ptr4.i = getelementptr i8, ptr %6, i32 13832
  %conv.i27.i = trunc i32 %sub.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv.i27.i) #9, !srcloc !51
  %shr.i28.i = lshr i32 %sub.i, 8
  %conv1.i29.i = trunc i32 %shr.i28.i to i8
  %add.ptr.i30.i = getelementptr i8, ptr %6, i32 13833
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i30.i, i8 %conv1.i29.i) #9, !srcloc !51
  %shr2.i31.i = lshr i32 %sub.i, 16
  %conv3.i32.i = trunc i32 %shr2.i31.i to i8
  %add.ptr4.i33.i = getelementptr i8, ptr %6, i32 13834
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i33.i, i8 %conv3.i32.i) #9, !srcloc !51
  %shr5.i34.i = lshr i32 %sub.i, 24
  %conv6.i35.i = trunc i32 %shr5.i34.i to i8
  %add.ptr7.i36.i = getelementptr i8, ptr %6, i32 13835
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i36.i, i8 %conv6.i35.i) #9, !srcloc !51
  %add.ptr5.i = getelementptr i8, ptr %6, i32 13844
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 127) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %add.ptr6.i = getelementptr i8, ptr %6, i32 13825
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 1) #9, !srcloc !51
  %buf_size.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp.not.i = icmp ult i32 %8, %14
  %spec.store.select.i = select i1 %cmp.not.i, i32 %8, i32 0
  %15 = ptrtoint ptr %buf_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select.i, ptr %buf_offset, align 4
  %hdmi = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdmi, align 4
  tail call void @dw_hdmi_audio_enable(ptr noundef %17) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %18 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period_size, align 4
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %delay, align 4
  br label %sw.epilog

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock16 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 2
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock16) #9
  %substream23 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %substream23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %substream23, align 4
  %base.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %25, i32 13844
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i41, i8 -1) #9, !srcloc !51
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr3.i42 = getelementptr i8, ptr %27, i32 13826
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i42, i8 1) #9, !srcloc !51
  %hdmi25 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %1, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %hdmi25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdmi25, align 4
  tail call void @dw_hdmi_audio_disable(ptr noundef %29) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i32 noundef %call18) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body10, %do.body1, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.body10 ], [ 0, %do.body1 ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_hdmi_pointer(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %buf_offset = getelementptr inbounds %struct.snd_dw_hdmi, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %buf_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_offset, align 4
  %mul.i = shl i32 %5, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %7
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pcm_lib_get_vmalloc_page(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_eld(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dw_hdmi_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.snd_dw_hdmi, ptr %data, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 265
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %2) #9, !srcloc !51
  %substream6 = getelementptr inbounds %struct.snd_dw_hdmi, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %substream6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %substream6, align 4
  %7 = and i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %tobool8.not = icmp eq ptr %6, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %6) #9
  %lock = getelementptr inbounds %struct.snd_dw_hdmi, ptr %data, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %8 = ptrtoint ptr %substream6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream6, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.then9.if.end13_crit_edge, label %if.then12

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %buf_offset.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %data, i32 0, i32 9
  %12 = ptrtoint ptr %buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_offset.i, align 4
  %buf_period.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %data, i32 0, i32 10
  %14 = ptrtoint ptr %buf_period.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_period.i, align 4
  %reformat.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %data, i32 0, i32 5
  %16 = ptrtoint ptr %reformat.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reformat.i, align 4
  tail call void %17(ptr noundef %data, i32 noundef %13, i32 noundef %15) #9
  %add.ptr.i = getelementptr i8, ptr %11, i32 265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 63) #9, !srcloc !51
  %buf_addr.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %data, i32 0, i32 8
  %18 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_addr.i, align 4
  %add.i = add i32 %19, %13
  %add2.i = add i32 %15, -1
  %sub.i = add i32 %add2.i, %add.i
  %add.ptr3.i = getelementptr i8, ptr %11, i32 13828
  %conv.i.i = trunc i32 %add.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv.i.i) #9, !srcloc !51
  %shr.i.i = lshr i32 %add.i, 8
  %conv1.i.i = trunc i32 %shr.i.i to i8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 13829
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv1.i.i) #9, !srcloc !51
  %shr2.i.i = lshr i32 %add.i, 16
  %conv3.i.i = trunc i32 %shr2.i.i to i8
  %add.ptr4.i.i = getelementptr i8, ptr %11, i32 13830
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 %conv3.i.i) #9, !srcloc !51
  %shr5.i.i = lshr i32 %add.i, 24
  %conv6.i.i = trunc i32 %shr5.i.i to i8
  %add.ptr7.i.i = getelementptr i8, ptr %11, i32 13831
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i, i8 %conv6.i.i) #9, !srcloc !51
  %add.ptr4.i = getelementptr i8, ptr %11, i32 13832
  %conv.i27.i = trunc i32 %sub.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv.i27.i) #9, !srcloc !51
  %shr.i28.i = lshr i32 %sub.i, 8
  %conv1.i29.i = trunc i32 %shr.i28.i to i8
  %add.ptr.i30.i = getelementptr i8, ptr %11, i32 13833
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i30.i, i8 %conv1.i29.i) #9, !srcloc !51
  %shr2.i31.i = lshr i32 %sub.i, 16
  %conv3.i32.i = trunc i32 %shr2.i31.i to i8
  %add.ptr4.i33.i = getelementptr i8, ptr %11, i32 13834
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i33.i, i8 %conv3.i32.i) #9, !srcloc !51
  %shr5.i34.i = lshr i32 %sub.i, 24
  %conv6.i35.i = trunc i32 %shr5.i34.i to i8
  %add.ptr7.i36.i = getelementptr i8, ptr %11, i32 13835
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i36.i, i8 %conv6.i35.i) #9, !srcloc !51
  %add.ptr5.i = getelementptr i8, ptr %11, i32 13844
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 127) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %add.ptr6.i = getelementptr i8, ptr %11, i32 13825
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 1) #9, !srcloc !51
  %add7.i = add i32 %15, %13
  %buf_size.i = getelementptr inbounds %struct.snd_dw_hdmi, ptr %data, i32 0, i32 11
  %20 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %21)
  %cmp.not.i = icmp ult i32 %add7.i, %21
  %spec.store.select.i = select i1 %cmp.not.i, i32 %add7.i, i32 0
  %22 = ptrtoint ptr %buf_offset.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select.i, ptr %buf_offset.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9.if.end13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end13 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_pcm_lib_alloc_vmalloc_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_free_vmalloc_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_set_sample_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_set_channel_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_set_channel_allocation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_reformat_iec958(ptr nocapture noundef readonly %dw, i32 noundef %offset, i32 noundef %bytes) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_src = getelementptr inbounds %struct.snd_dw_hdmi, ptr %dw, i32 0, i32 6
  %0 = ptrtoint ptr %buf_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_src, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %buf_dst = getelementptr inbounds %struct.snd_dw_hdmi, ptr %dw, i32 0, i32 7
  %2 = ptrtoint ptr %buf_dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_dst, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %offset
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %bytes
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %dst.0 = phi ptr [ %add.ptr1, %entry ], [ %incdec.ptr5, %do.body.do.body_crit_edge ]
  %src.0 = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %src.0, i32 1
  %4 = ptrtoint ptr %src.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src.0, align 4
  %and = shl i32 %5, 25
  %shl = and i32 %and, 268435456
  %shr = lshr i32 %5, 4
  %or = or i32 %shl, %shr
  %incdec.ptr5 = getelementptr i32, ptr %dst.0, i32 1
  %6 = ptrtoint ptr %dst.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %dst.0, align 4
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr4
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_reformat_s24(ptr nocapture noundef %dw, i32 noundef %offset, i32 noundef %bytes) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_src = getelementptr inbounds %struct.snd_dw_hdmi, ptr %dw, i32 0, i32 6
  %0 = ptrtoint ptr %buf_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_src, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %buf_dst = getelementptr inbounds %struct.snd_dw_hdmi, ptr %dw, i32 0, i32 7
  %2 = ptrtoint ptr %buf_dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_dst, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %offset
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %bytes
  %iec_offset = getelementptr inbounds %struct.snd_dw_hdmi, ptr %dw, i32 0, i32 14
  %channels = getelementptr inbounds %struct.snd_dw_hdmi, ptr %dw, i32 0, i32 12
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %dst.0 = phi ptr [ %add.ptr1, %entry ], [ %incdec.ptr14, %do.end.do.body_crit_edge ]
  %src.0 = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr, %do.end.do.body_crit_edge ]
  %4 = ptrtoint ptr %iec_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iec_offset, align 1
  %inc = add i8 %5, 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.snd_dw_hdmi, ptr %dw, i32 0, i32 15, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %inc)
  %cmp = icmp ugt i8 %inc, -65
  %spec.select = select i1 %cmp, i8 0, i8 %inc
  %6 = ptrtoint ptr %iec_offset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %iec_offset, align 1
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channels, align 4
  br label %do.body9

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %do.body
  %dst.1 = phi ptr [ %dst.0, %do.body ], [ %incdec.ptr14, %do.body9.do.body9_crit_edge ]
  %i.0 = phi i32 [ %8, %do.body ], [ %dec, %do.body9.do.body9_crit_edge ]
  %cs.0 = phi ptr [ %arrayidx, %do.body ], [ %incdec.ptr10, %do.body9.do.body9_crit_edge ]
  %src.1 = phi ptr [ %src.0, %do.body ], [ %incdec.ptr, %do.body9.do.body9_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %src.1, i32 1
  %9 = ptrtoint ptr %src.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src.1, align 4
  %and = and i32 %10, 16777215
  %incdec.ptr10 = getelementptr i8, ptr %cs.0, i32 1
  %11 = ptrtoint ptr %cs.0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cs.0, align 1
  %conv11 = zext i8 %12 to i32
  %shl = shl nuw i32 %conv11, 24
  %or = or i32 %shl, %and
  %and12 = and i32 %or, 134217727
  %shr.i = lshr i32 %and12, 16
  %xor.i = xor i32 %shr.i, %and12
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %shr3.i = lshr i32 %xor2.i, 4
  %xor4.i = xor i32 %shr3.i, %xor2.i
  %shr5.i = lshr i32 %xor4.i, 2
  %xor6.i = xor i32 %shr5.i, %xor4.i
  %shr7.i = lshr i32 %xor6.i, 1
  %xor8.i = xor i32 %shr7.i, %xor6.i
  %and.i = shl i32 %xor8.i, 27
  %shl.i = and i32 %and.i, 134217728
  %or13 = or i32 %shl.i, %or
  %incdec.ptr14 = getelementptr i32, ptr %dst.1, i32 1
  %13 = ptrtoint ptr %dst.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or13, ptr %dst.1, align 4
  %dec = add i32 %i.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body9.do.body9_crit_edge

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

do.end:                                           ; preds = %do.body9
  %cmp16 = icmp ult ptr %incdec.ptr, %add.ptr4
  br i1 %cmp16, label %do.end.do.body_crit_edge, label %do.end18

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_create_iec958_consumer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_audio_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_audio_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_dw_hdmi_ahb_audio__238_635_snd_dw_hdmi_driver_init6, !1, !"__initcall__kmod_dw_hdmi_ahb_audio__238_635_snd_dw_hdmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 635, i32 1}
!2 = !{ptr @__exitcall_snd_dw_hdmi_driver_exit, !1, !"__exitcall_snd_dw_hdmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 637, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 638, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 639, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias243, !11, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 640, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 630, i32 11}
!14 = !{ptr @snd_dw_hdmi_driver, !15, !"snd_dw_hdmi_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 626, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 535, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @snd_dw_hdmi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @snd_dw_hdmi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 546, i32 27}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 548, i32 4}
!28 = !{ptr @snd_dw_hdmi_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 556, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 558, i32 26}
!33 = !{ptr @snd_dw_hdmi_ops, !34, !"snd_dw_hdmi_ops", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 509, i32 33}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 364, i32 6}
!37 = !{ptr @dw_hdmi_hw, !38, !"dw_hdmi_hw", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 294, i32 38}
!39 = !{ptr @default_hdmi_channel_config, !40, !"default_hdmi_channel_config", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c", i32 106, i32 36}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i64 699596}
!52 = !{i64 699991}
!53 = !{i64 2154935872}
