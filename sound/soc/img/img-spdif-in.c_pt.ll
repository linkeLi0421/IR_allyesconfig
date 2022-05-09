; ModuleID = '/llk/IR_all_yes/sound/soc/img/img-spdif-in.c_pt.bc'
source_filename = "../sound/soc/img/img-spdif-in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.95, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.95 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.img_spdif_in = type { %struct.spinlock, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, ptr, i32, i8, i32, i32, i32, [4 x i32], i8, i32, i32, [4 x i32] }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.83, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { %struct.anon.86, [40 x i8] }
%struct.anon.86 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_img_spdif_in__242_886_img_spdif_in_driver_init6 = internal global ptr @img_spdif_in_driver_init, section ".initcall6.init", align 4
@img_spdif_in_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_spdif_in_probe, ptr @img_spdif_in_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_spdif_in_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_spdif_in_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_spdif_in_driver_exit = internal global ptr @img_spdif_in_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [63 x i8] c"img_spdif_in.author=Damien Horsley <Damien.Horsley@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [48 x i8] c"img_spdif_in.description=IMG SPDIF Input driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [45 x i8] c"img_spdif_in.file=sound/soc/img/img-spdif-in\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [28 x i8] c"img_spdif_in.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"img-spdif-in\00", [19 x i8] zeroinitializer }, align 32
@img_spdif_in_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,spdif-in\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_spdif_in_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_spdif_in_suspend, ptr @img_spdif_in_resume, ptr @img_spdif_in_suspend, ptr @img_spdif_in_resume, ptr @img_spdif_in_suspend, ptr @img_spdif_in_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_spdif_in_runtime_suspend, ptr @img_spdif_in_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to acquire clock 'sys'\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rst\00", [28 x i8] zeroinitializer }, align 32
@img_spdif_in_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"img_spdif_in\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"img_spdif_in_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/img/img-spdif-in.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No top level reset found\0A\00", [38 x i8] zeroinitializer }, align 32
@img_spdif_in_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&spdif->lock\00", [19 x i8] zeroinitializer }, align 32
@img_spdif_in_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@img_spdif_in_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @img_spdif_in_dai_probe, ptr null, ptr null, ptr null, ptr @img_spdif_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1024, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@img_spdif_in_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 106, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable sys clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"img_spdif_in_runtime_resume\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_spdif_in_runtime_resume._entry_ptr = internal global ptr @img_spdif_in_runtime_resume._entry, section ".printk_index", align 4
@img_spdif_in_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_spdif_in_hw_params, ptr null, ptr null, ptr @img_spdif_in_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@img_spdif_in_controls = internal global { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.13, i32 0, i32 1, i32 0, ptr @img_spdif_in_iec958_info, ptr @img_spdif_in_get_status_mask, ptr null, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.14, i32 0, i32 5, i32 0, ptr @img_spdif_in_iec958_info, ptr @img_spdif_in_get_status, ptr null, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @img_spdif_in_info_multi_freq, ptr @img_spdif_in_get_multi_freq, ptr @img_spdif_in_set_multi_freq, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.16, i32 0, i32 5, i32 0, ptr @img_spdif_in_info_lock_freq, ptr @img_spdif_in_get_lock_freq, ptr null, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @img_spdif_in_info_trk, ptr @img_spdif_in_get_trk, ptr @img_spdif_in_set_trk, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @img_spdif_in_info_lock, ptr @img_spdif_in_get_lock_acquire, ptr @img_spdif_in_set_lock_acquire, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @img_spdif_in_info_lock, ptr @img_spdif_in_get_lock_release, ptr @img_spdif_in_set_lock_release, %union.anon.87 zeroinitializer, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Mask\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Capture Default\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SPDIF In Multi Frequency Acquire\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPDIF In Lock Frequency\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SPDIF In Lock TRK\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SPDIF In Lock Acquire Threshold\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SPDIF In Lock Release Threshold\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"img_spdif_in_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 877, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 879, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"img_spdif_in_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 865, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"img_spdif_in_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 871, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 741, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 744, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 758, i32 53 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 764, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 773, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"img_spdif_in_component\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 713, i32 46 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"img_spdif_in_dai\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 702, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 106, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"img_spdif_in_dai_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 685, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"img_spdif_in_controls\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 571, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 575, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 583, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 589, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 598, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 604, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 611, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [32 x i8] c"../sound/soc/img/img-spdif-in.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 618, i32 11 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_img_spdif_in_driver_exit, ptr @__initcall__kmod_img_spdif_in__242_886_img_spdif_in_driver_init6, ptr @img_spdif_in_driver_exit, ptr @img_spdif_in_runtime_resume._entry, ptr @img_spdif_in_runtime_resume._entry_ptr, ptr @img_spdif_in_driver, ptr @.str, ptr @img_spdif_in_of_match, ptr @img_spdif_in_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @img_spdif_in_probe.__key, ptr @.str.8, ptr @img_spdif_in_component, ptr @img_spdif_in_dai, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @img_spdif_in_dai_ops, ptr @img_spdif_in_controls, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_in_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_spdif_in_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_spdif_in_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_spdif_in_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !71
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 156, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev4 = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev4, align 4
  %call5 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #9
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %base10 = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %base10, align 4
  %call11 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %clk_sys = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk_sys to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %clk_sys, align 4
  %cmp.i141 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call11 to i32
  %call17 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end18.if.end28_crit_edge, label %if.then22

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %if.end18
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %clk_sys.i = getelementptr inbounds %struct.img_spdif_in, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_sys.i, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then22.img_spdif_in_runtime_resume.exit_crit_edge

if.then22.img_spdif_in_runtime_resume.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_spdif_in_runtime_resume.exit

if.end.i.i:                                       ; preds = %if.then22
  %call1.i.i = call i32 @clk_enable(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end28_crit_edge, label %if.then3.i.i

if.end.i.i.if.end28_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %11) #9
  br label %img_spdif_in_runtime_resume.exit

img_spdif_in_runtime_resume.exit:                 ; preds = %if.then3.i.i, %if.then22.img_spdif_in_runtime_resume.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then22.img_spdif_in_runtime_resume.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %err_pm_disable

if.end28:                                         ; preds = %if.end.i.i.if.end28_crit_edge, %if.end18.if.end28_crit_edge
  %call.i144 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp = icmp slt i32 %call.i144, 0
  br i1 %cmp, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !73
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then31.err_suspend_crit_edge, label %do.end11.i.i.i.i

if.then31.err_suspend_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

do.end11.i.i.i.i:                                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  br label %err_suspend

if.end33:                                         ; preds = %if.end28
  %call.i145 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %cmp.i146 = icmp ugt ptr %call.i145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end33
  %cmp39 = icmp eq ptr %call.i145, inttoptr (i32 -517 to ptr)
  br i1 %cmp39, label %if.then40, label %do.body

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %call.i147 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  br label %err_suspend

do.body:                                          ; preds = %if.then37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_spdif_in_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_spdif_in_probe, %if.then46)) #9
          to label %do.end [label %if.then46], !srcloc !75

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_spdif_in_probe.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %do.end

do.end:                                           ; preds = %if.then46, %do.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base10, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base10, align 4
  %add.ptr.i149 = getelementptr i8, ptr %16, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 0) #9, !srcloc !77
  br label %do.body51

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = call i32 @reset_control_assert(ptr noundef %call.i145) #9
  %call49 = call i32 @reset_control_deassert(ptr noundef %call.i145) #9
  br label %do.body51

do.body51:                                        ; preds = %if.else, %do.end
  call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @img_spdif_in_probe.__key, i16 noundef signext 3) #9
  %17 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %res, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %dma_data = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dma_data, align 4
  %addr_width = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %addr_width, align 4
  %maxburst = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %maxburst, align 4
  %trk = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %trk to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %trk, align 4
  %lock_acquire = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %lock_acquire to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %lock_acquire, align 4
  %lock_release = getelementptr inbounds %struct.img_spdif_in, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %lock_release to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -128, ptr %lock_release, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base10, align 4
  %add.ptr.i151 = getelementptr i8, ptr %28, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 -2147188736) #9, !srcloc !77
  %call.i152 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  %call68 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @img_spdif_in_component, ptr noundef nonnull @img_spdif_in_dai, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %do.body51.err_suspend_crit_edge

do.body51.err_suspend_crit_edge:                  ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end71:                                         ; preds = %do.body51
  %call73 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end71.cleanup_crit_edge, label %if.end71.err_suspend_crit_edge

if.end71.err_suspend_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_suspend:                                      ; preds = %if.end71.err_suspend_crit_edge, %do.body51.err_suspend_crit_edge, %if.then40, %do.end11.i.i.i.i, %if.then31.err_suspend_crit_edge
  %ret.0 = phi i32 [ -517, %if.then40 ], [ %call68, %do.body51.err_suspend_crit_edge ], [ %call73, %if.end71.err_suspend_crit_edge ], [ %call.i144, %if.then31.err_suspend_crit_edge ], [ %call.i144, %do.end11.i.i.i.i ]
  %29 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i154 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i154)
  %tobool.not.i155 = icmp ult i16 %bf.load.i154, 8192
  br i1 %tobool.not.i155, label %err_suspend.err_pm_disable_crit_edge, label %if.then81

err_suspend.err_pm_disable_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_disable

if.then81:                                        ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i, align 4
  %clk_sys.i157 = getelementptr inbounds %struct.img_spdif_in, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %clk_sys.i157 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_sys.i157, align 4
  call void @clk_disable(ptr noundef %33) #9
  call void @clk_unprepare(ptr noundef %33) #9
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then81, %err_suspend.err_pm_disable_crit_edge, %img_spdif_in_runtime_resume.exit
  %ret.1 = phi i32 [ %ret.0, %err_suspend.err_pm_disable_crit_edge ], [ %ret.0, %if.then81 ], [ %retval.0.i.ph.i, %img_spdif_in_runtime_resume.exit ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end71.cleanup_crit_edge, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %call17, %if.then14 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_dev_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk_sys.i = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_sys.i, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_sys = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_sys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_sys, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_sys = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_sys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_sys, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_dai_probe(ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_data = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 3
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dma_data, ptr %capture_dma_data.i, align 4
  %call1 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @img_spdif_in_controls, i32 noundef 7) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_spdif_in_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_spdif_in_get_status_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_get_status(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !78
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %conv = trunc i32 %9 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %value, align 8
  %shr = lshr i32 %9, 8
  %conv3 = trunc i32 %shr to i8
  %arrayidx6 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %arrayidx6, align 1
  %shr7 = lshr i32 %9, 16
  %conv9 = trunc i32 %shr7 to i8
  %arrayidx12 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %arrayidx12, align 2
  %shr13 = lshr i32 %9, 24
  %conv15 = trunc i32 %shr13 to i8
  %arrayidx18 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv15, ptr %arrayidx18, align 1
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #9, !srcloc !78
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %conv22 = trunc i32 %17 to i8
  %arrayidx25 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv22, ptr %arrayidx25, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_spdif_in_info_multi_freq(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2147483647, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_get_multi_freq(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %multi_freq = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %multi_freq to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %multi_freq, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %multi_freqs = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %multi_freqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %multi_freqs, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  %arrayidx8 = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx18, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %value19 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = call ptr @memset(ptr %value19, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_set_multi_freq(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %arrayidx6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %land.lhs.true8, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %do.body27, label %land.lhs.true8.if.else_crit_edge

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %land.lhs.true4.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %arrayidx16 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %arrayidx19 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 8
  %arrayidx22 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %15, i32 %7) #9
  %21 = tail call i32 @llvm.umax.i32(i32 %17, i32 %20) #9
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 %21) #9
  %mul2.i.i = mul i32 %22, 1536
  %clk_sys.i.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %clk_sys.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_sys.i.i, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %24) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %mul2.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, %mul2.i.i
  %brmerge = select i1 %cmp.i.i, i1 true, i1 %cmp
  br i1 %brmerge, label %if.else.cleanup_crit_edge, label %if.end.i99.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i99.i:                                     ; preds = %if.else
  %mul.i.i = shl i32 %7, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %call.i.i)
  %tobool1.not.i.i = icmp ugt i32 %mul.i.i, %call.i.i
  br i1 %tobool1.not.i.i, label %if.end.i99.i.cleanup_crit_edge, label %if.end3.i.i

if.end.i99.i.cleanup_crit_edge:                   ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i99.i
  %div.i.i = udiv i32 %call.i.i, %mul.i.i
  %div4.i.i = udiv i32 4096, %div.i.i
  %add.i.i = add nuw nsw i32 %div4.i.i, 1
  %sub.i.i = add i32 %div.i.i, -1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end3.i.i
  %nom.0.i.i = phi i32 [ %add.i.i, %if.end3.i.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %dec.i.i = add i32 %nom.0.i.i, -1
  %mul5.i.i = mul i32 %dec.i.i, %sub.i.i
  %sub6.i.i = sub i32 4096, %mul5.i.i
  %cmp.i100.i = icmp ult i32 %sub6.i.i, 120
  br i1 %cmp.i100.i, label %do.body.i.i.do.body.i.i_crit_edge, label %if.end12.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.end12.i:                                       ; preds = %do.body.i.i
  %and.i = and i32 %dec.i.i, 1023
  %shl13.i = shl i32 %sub6.i.i, 10
  %and14.i = and i32 %shl13.i, 1047552
  %or.i = or i32 %and14.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.1.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.1.i, label %if.end12.i.cleanup_crit_edge, label %if.end.i99.1.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i99.1.i:                                   ; preds = %if.end12.i
  %mul.i.1.i = shl i32 %15, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.1.i, i32 %call.i.i)
  %tobool1.not.i.1.i = icmp ugt i32 %mul.i.1.i, %call.i.i
  br i1 %tobool1.not.i.1.i, label %if.end.i99.1.i.cleanup_crit_edge, label %if.end3.i.1.i

if.end.i99.1.i.cleanup_crit_edge:                 ; preds = %if.end.i99.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i.1.i:                                    ; preds = %if.end.i99.1.i
  %div.i.1.i = udiv i32 %call.i.i, %mul.i.1.i
  %div4.i.1.i = udiv i32 4096, %div.i.1.i
  %add.i.1.i = add nuw nsw i32 %div4.i.1.i, 1
  %sub.i.1.i = add i32 %div.i.1.i, -1
  br label %do.body.i.1.i

do.body.i.1.i:                                    ; preds = %do.body.i.1.i.do.body.i.1.i_crit_edge, %if.end3.i.1.i
  %nom.0.i.1.i = phi i32 [ %add.i.1.i, %if.end3.i.1.i ], [ %dec.i.1.i, %do.body.i.1.i.do.body.i.1.i_crit_edge ]
  %dec.i.1.i = add i32 %nom.0.i.1.i, -1
  %mul5.i.1.i = mul i32 %dec.i.1.i, %sub.i.1.i
  %sub6.i.1.i = sub i32 4096, %mul5.i.1.i
  %cmp.i100.1.i = icmp ult i32 %sub6.i.1.i, 120
  br i1 %cmp.i100.1.i, label %do.body.i.1.i.do.body.i.1.i_crit_edge, label %if.end12.1.i

do.body.i.1.i.do.body.i.1.i_crit_edge:            ; preds = %do.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.1.i

if.end12.1.i:                                     ; preds = %do.body.i.1.i
  %and.1.i = and i32 %dec.i.1.i, 1023
  %shl13.1.i = shl i32 %sub6.i.1.i, 10
  %and14.1.i = and i32 %shl13.1.i, 1047552
  %or.1.i = or i32 %and14.1.i, %and.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.2.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.2.i, label %if.end12.1.i.cleanup_crit_edge, label %if.end.i99.2.i

if.end12.1.i.cleanup_crit_edge:                   ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i99.2.i:                                   ; preds = %if.end12.1.i
  %mul.i.2.i = shl i32 %17, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.2.i, i32 %call.i.i)
  %tobool1.not.i.2.i = icmp ugt i32 %mul.i.2.i, %call.i.i
  br i1 %tobool1.not.i.2.i, label %if.end.i99.2.i.cleanup_crit_edge, label %if.end3.i.2.i

if.end.i99.2.i.cleanup_crit_edge:                 ; preds = %if.end.i99.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i.2.i:                                    ; preds = %if.end.i99.2.i
  %div.i.2.i = udiv i32 %call.i.i, %mul.i.2.i
  %div4.i.2.i = udiv i32 4096, %div.i.2.i
  %add.i.2.i = add nuw nsw i32 %div4.i.2.i, 1
  %sub.i.2.i = add i32 %div.i.2.i, -1
  br label %do.body.i.2.i

do.body.i.2.i:                                    ; preds = %do.body.i.2.i.do.body.i.2.i_crit_edge, %if.end3.i.2.i
  %nom.0.i.2.i = phi i32 [ %add.i.2.i, %if.end3.i.2.i ], [ %dec.i.2.i, %do.body.i.2.i.do.body.i.2.i_crit_edge ]
  %dec.i.2.i = add i32 %nom.0.i.2.i, -1
  %mul5.i.2.i = mul i32 %dec.i.2.i, %sub.i.2.i
  %sub6.i.2.i = sub i32 4096, %mul5.i.2.i
  %cmp.i100.2.i = icmp ult i32 %sub6.i.2.i, 120
  br i1 %cmp.i100.2.i, label %do.body.i.2.i.do.body.i.2.i_crit_edge, label %if.end12.2.i

do.body.i.2.i.do.body.i.2.i_crit_edge:            ; preds = %do.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.2.i

if.end12.2.i:                                     ; preds = %do.body.i.2.i
  %and.2.i = and i32 %dec.i.2.i, 1023
  %shl13.2.i = shl i32 %sub6.i.2.i, 10
  %and14.2.i = and i32 %shl13.2.i, 1047552
  %or.2.i = or i32 %and14.2.i, %and.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.3.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.3.i, label %if.end12.2.i.cleanup_crit_edge, label %if.end.i99.3.i

if.end12.2.i.cleanup_crit_edge:                   ; preds = %if.end12.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i99.3.i:                                   ; preds = %if.end12.2.i
  %mul.i.3.i = shl i32 %19, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.3.i, i32 %call.i.i)
  %tobool1.not.i.3.i = icmp ugt i32 %mul.i.3.i, %call.i.i
  br i1 %tobool1.not.i.3.i, label %if.end.i99.3.i.cleanup_crit_edge, label %if.end3.i.3.i

if.end.i99.3.i.cleanup_crit_edge:                 ; preds = %if.end.i99.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i.3.i:                                    ; preds = %if.end.i99.3.i
  %div.i.3.i = udiv i32 %call.i.i, %mul.i.3.i
  %div4.i.3.i = udiv i32 4096, %div.i.3.i
  %add.i.3.i = add nuw nsw i32 %div4.i.3.i, 1
  %sub.i.3.i = add i32 %div.i.3.i, -1
  br label %do.body.i.3.i

do.body.i.3.i:                                    ; preds = %do.body.i.3.i.do.body.i.3.i_crit_edge, %if.end3.i.3.i
  %nom.0.i.3.i = phi i32 [ %add.i.3.i, %if.end3.i.3.i ], [ %dec.i.3.i, %do.body.i.3.i.do.body.i.3.i_crit_edge ]
  %dec.i.3.i = add i32 %nom.0.i.3.i, -1
  %mul5.i.3.i = mul i32 %dec.i.3.i, %sub.i.3.i
  %sub6.i.3.i = sub i32 4096, %mul5.i.3.i
  %cmp.i100.3.i = icmp ult i32 %sub6.i.3.i, 120
  br i1 %cmp.i100.3.i, label %do.body.i.3.i.do.body.i.3.i_crit_edge, label %if.end12.3.i

do.body.i.3.i.do.body.i.3.i_crit_edge:            ; preds = %do.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.3.i

if.end12.3.i:                                     ; preds = %do.body.i.3.i
  %call22.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %active.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 11
  %25 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %active.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool25.not.i = icmp eq i8 %26, 0
  br i1 %tobool25.not.i, label %if.end28.i, label %if.end12.3.i.cleanup.sink.split_crit_edge

if.end12.3.i.cleanup.sink.split_crit_edge:        ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end28.i:                                       ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl13.3.i = shl i32 %sub6.i.3.i, 10
  %and14.3.i = and i32 %shl13.3.i, 1047552
  %and.3.i = and i32 %dec.i.3.i, 1023
  %or.3.i = or i32 %and14.3.i, %and.3.i
  %trk.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %trk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %trk.i, align 4
  %shl29.i = shl i32 %28, 20
  %base.i.i.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 1
  %or35.i = or i32 %or.i, %shl29.i
  %arrayidx36.i = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 14, i32 0
  %29 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or35.i, ptr %arrayidx36.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #9
  %31 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %30) #9, !srcloc !77
  %or35.1.i = or i32 %or.1.i, %shl29.i
  %arrayidx36.1.i = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or35.1.i, ptr %arrayidx36.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %or35.1.i) #9
  %35 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %36, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %34) #9, !srcloc !77
  %or35.2.i = or i32 %or.2.i, %shl29.i
  %arrayidx36.2.i = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 14, i32 2
  %37 = ptrtoint ptr %arrayidx36.2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or35.2.i, ptr %arrayidx36.2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or35.2.i) #9
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %40, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %38) #9, !srcloc !77
  %or35.3.i = or i32 %or.3.i, %shl29.i
  %arrayidx36.3.i = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 14, i32 3
  %41 = ptrtoint ptr %arrayidx36.3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or35.3.i, ptr %arrayidx36.3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %or35.3.i) #9
  %43 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %44, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %42) #9, !srcloc !77
  %multi_freq.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 6
  %45 = ptrtoint ptr %multi_freq.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %multi_freq.i, align 4
  %multi_freqs41.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 10
  %46 = ptrtoint ptr %multi_freqs41.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %7, ptr %multi_freqs41.i, align 4
  %arrayidx45.i = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %15, ptr %arrayidx45.i, align 4
  %arrayidx48.i = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 10, i32 2
  %48 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %17, ptr %arrayidx48.i, align 4
  %arrayidx51.i = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 10, i32 3
  %49 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %19, ptr %arrayidx51.i, align 4
  br label %cleanup.sink.split

do.body27:                                        ; preds = %land.lhs.true8
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %active = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 11
  %50 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %active, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool33.not = icmp eq i8 %51, 0
  br i1 %tobool33.not, label %if.end36, label %do.body27.cleanup.sink.split_crit_edge

do.body27.cleanup.sink.split_crit_edge:           ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end36:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %multi_freq37 = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 6
  %52 = ptrtoint ptr %multi_freq37 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %multi_freq37, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end36, %do.body27.cleanup.sink.split_crit_edge, %if.end28.i, %if.end12.3.i.cleanup.sink.split_crit_edge
  %call22.i.sink = phi i32 [ %call30, %if.end36 ], [ %call22.i, %if.end28.i ], [ %call22.i, %if.end12.3.i.cleanup.sink.split_crit_edge ], [ %call30, %do.body27.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end36 ], [ 0, %if.end28.i ], [ -16, %if.end12.3.i.cleanup.sink.split_crit_edge ], [ -16, %do.body27.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call22.i.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i99.3.i.cleanup_crit_edge, %if.end12.2.i.cleanup_crit_edge, %if.end.i99.2.i.cleanup_crit_edge, %if.end12.1.i.cleanup_crit_edge, %if.end.i99.1.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.end.i99.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end.i99.3.i.cleanup_crit_edge ], [ -22, %if.end12.2.i.cleanup_crit_edge ], [ -22, %if.end.i99.2.i.cleanup_crit_edge ], [ -22, %if.end12.1.i.cleanup_crit_edge ], [ -22, %if.end.i99.1.i.cleanup_crit_edge ], [ -22, %if.end12.i.cleanup_crit_edge ], [ -22, %if.end.i99.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_spdif_in_info_lock_freq(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2147483647, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_get_lock_freq(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %base.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !78
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %and = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %multi_freq = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %multi_freq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %multi_freq, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  %and9 = lshr i32 %9, 12
  %shr = and i32 %and9, 7
  %sub = add nsw i32 %shr, -1
  %arrayidx = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 10, i32 %sub
  %single_freq = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 9
  %arrayidx.sink = select i1 %tobool7.not, ptr %single_freq, ptr %arrayidx
  %12 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.sink, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then, %entry.if.end16_crit_edge
  %.sink = phi i32 [ 0, %entry.if.end16_crit_edge ], [ %13, %if.then ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %value, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_spdif_in_info_trk(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_spdif_in_get_trk(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %trk = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %trk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trk, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_set_trk(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %active = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %trk = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %trk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %trk, align 4
  %base.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %14 = and i32 %13, -65281
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %trk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trk, align 4
  %shl = shl i32 %17, 16
  %or = or i32 %shl, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %18) #9, !srcloc !77
  %arrayidx11 = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 14, i32 0
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11, align 4
  %and12 = and i32 %22, -267386881
  %23 = ptrtoint ptr %trk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %trk, align 4
  %shl14 = shl i32 %24, 20
  %or15 = or i32 %shl14, %and12
  store i32 %or15, ptr %arrayidx11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or15) #9
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #9, !srcloc !77
  %arrayidx11.1 = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 14, i32 1
  %28 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11.1, align 4
  %and12.1 = and i32 %29, -267386881
  %30 = ptrtoint ptr %trk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %trk, align 4
  %shl14.1 = shl i32 %31, 20
  %or15.1 = or i32 %shl14.1, %and12.1
  store i32 %or15.1, ptr %arrayidx11.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %or15.1) #9
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 %32) #9, !srcloc !77
  %arrayidx11.2 = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 14, i32 2
  %35 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx11.2, align 4
  %and12.2 = and i32 %36, -267386881
  %37 = ptrtoint ptr %trk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %trk, align 4
  %shl14.2 = shl i32 %38, 20
  %or15.2 = or i32 %shl14.2, %and12.2
  store i32 %or15.2, ptr %arrayidx11.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %39 = tail call i32 @llvm.bswap.i32(i32 %or15.2) #9
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %41, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 %39) #9, !srcloc !77
  %arrayidx11.3 = getelementptr %struct.img_spdif_in, ptr %5, i32 0, i32 14, i32 3
  %42 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx11.3, align 4
  %and12.3 = and i32 %43, -267386881
  %44 = ptrtoint ptr %trk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %trk, align 4
  %shl14.3 = shl i32 %45, 20
  %or15.3 = or i32 %shl14.3, %and12.3
  store i32 %or15.3, ptr %arrayidx11.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %or15.3) #9
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %48, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 %46) #9, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call3) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_spdif_in_info_lock(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -128, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_spdif_in_get_lock_acquire(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %lock_acquire = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %lock_acquire to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lock_acquire, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_set_lock_acquire(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %active = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %lock_acquire = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %lock_acquire to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %lock_acquire, align 4
  %base.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %14 = and i32 %13, -16711681
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %lock_acquire to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lock_acquire, align 4
  %shl = shl i32 %17, 8
  %and9 = and i32 %shl, 65280
  %or = or i32 %and9, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %18) #9, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call3) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_spdif_in_get_lock_release(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %lock_release = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %lock_release to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lock_release, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_set_lock_release(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %active = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %lock_release = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %lock_release to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %lock_release, align 4
  %base.i = getelementptr inbounds %struct.img_spdif_in, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %14 = and i32 %13, 16777215
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %lock_release to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lock_release, align 4
  %and9 = and i32 %17, 255
  %or = or i32 %and9, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %18) #9, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call3) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i13 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i13, align 4
  %arrayidx.i.i14 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %9, %entry.params_format.exit_crit_edge ], [ %11, %for.inc.i.i.params_format.exit_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !81
  %add.i.i = or i32 %12, %i.09.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i)
  %cmp.not = icmp eq i32 %add.i.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4.not = icmp eq i32 %7, 2
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end6, label %params_format.exit.cleanup_crit_edge

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %params_format.exit
  %mul2.i.i = mul i32 %5, 1536
  %clk_sys.i.i = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %clk_sys.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_sys.i.i, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %mul2.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, %mul2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i15 = icmp eq i32 %5, 0
  %or.cond.i = or i1 %tobool.not.i.i15, %cmp.i.i
  br i1 %or.cond.i, label %if.end6.cleanup_crit_edge, label %if.end.i35.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i35.i:                                     ; preds = %if.end6
  %mul.i.i = shl i32 %5, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %call.i.i)
  %tobool1.not.i.i = icmp ugt i32 %mul.i.i, %call.i.i
  br i1 %tobool1.not.i.i, label %if.end.i35.i.cleanup_crit_edge, label %if.end3.i.i

if.end.i35.i.cleanup_crit_edge:                   ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i35.i
  %div.i.i = udiv i32 %call.i.i, %mul.i.i
  %div4.i.i = udiv i32 4096, %div.i.i
  %add.i.i16 = add nuw nsw i32 %div4.i.i, 1
  %sub.i.i = add i32 %div.i.i, -1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end3.i.i
  %nom.0.i.i = phi i32 [ %add.i.i16, %if.end3.i.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %dec.i.i = add i32 %nom.0.i.i, -1
  %mul5.i.i = mul i32 %dec.i.i, %sub.i.i
  %sub6.i.i = sub i32 4096, %mul5.i.i
  %cmp.i36.i = icmp ult i32 %sub6.i.i, 120
  br i1 %cmp.i36.i, label %do.body.i.i.do.body.i.i_crit_edge, label %if.end4.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.end4.i:                                        ; preds = %do.body.i.i
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %active.i = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %if.end15.i, label %if.end4.i.cleanup.sink.split.i_crit_edge

if.end4.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end15.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %dec.i.i, 1023
  %shl5.i = shl i32 %sub6.i.i, 16
  %and6.i = and i32 %shl5.i, 67043328
  %or.i = or i32 %and6.i, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %base.i.i = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #9, !srcloc !77
  %single_freq.i = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %single_freq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %5, ptr %single_freq.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end15.i, %if.end4.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ 0, %if.end15.i ], [ -16, %if.end4.i.cleanup.sink.split.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i35.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end.i35.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge32
    i32 4, label %entry.sw.bb_crit_edge33
    i32 0, label %entry.sw.bb8_crit_edge
    i32 5, label %entry.sw.bb8_crit_edge34
    i32 3, label %entry.sw.bb8_crit_edge35
  ]

entry.sw.bb8_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

entry.sw.bb8_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32, %entry.sw.bb_crit_edge33
  %base.i = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !78
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %multi_freq = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %multi_freq to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %multi_freq, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %and = and i32 %8, 268435455
  %or = or i32 %8, 268435456
  %reg.0 = select i1 %tobool.not, i32 %or, i32 %and
  %or7 = or i32 %reg.0, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or7) #9
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %11) #9, !srcloc !77
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge34, %entry.sw.bb8_crit_edge35
  %base.i28 = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %base.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i28, align 4
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #9, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %17 = and i32 %16, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %base.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i28, align 4
  %add.ptr.i31 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %17) #9, !srcloc !77
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb8, %sw.bb
  %.sink = phi i8 [ 0, %sw.bb8 ], [ 1, %sw.bb ]
  %active11 = getelementptr inbounds %struct.img_spdif_in, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %active11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %active11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #9
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %clk_sys.i = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_sys.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.img_spdif_in_runtime_resume.exit_crit_edge

if.then.img_spdif_in_runtime_resume.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_spdif_in_runtime_resume.exit

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end4_crit_edge, label %if.then3.i.i

if.end.i.i.if.end4_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %img_spdif_in_runtime_resume.exit

img_spdif_in_runtime_resume.exit:                 ; preds = %if.then3.i.i, %if.then.img_spdif_in_runtime_resume.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then.img_spdif_in_runtime_resume.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %base.i = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !78
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %suspend_clkgen = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %suspend_clkgen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %suspend_clkgen, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #9, !srcloc !78
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %suspend_ctl = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %suspend_ctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %suspend_ctl, align 4
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %clk_sys.i19 = getelementptr inbounds %struct.img_spdif_in, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %clk_sys.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_sys.i19, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %img_spdif_in_runtime_resume.exit
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %retval.0.i.ph.i, %img_spdif_in_runtime_resume.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_in_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_sys.i = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_sys.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.img_spdif_in_runtime_resume.exit.thread_crit_edge

entry.img_spdif_in_runtime_resume.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_spdif_in_runtime_resume.exit.thread

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.cond.preheader, label %if.then3.i.i

for.cond.preheader:                               ; preds = %if.end.i.i
  %base.i.i = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.img_spdif_in, ptr %1, i32 0, i32 14, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #9, !srcloc !77
  %arrayidx.i.1 = getelementptr %struct.img_spdif_in, ptr %1, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 %11) #9, !srcloc !77
  %arrayidx.i.2 = getelementptr %struct.img_spdif_in, ptr %1, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 %16) #9, !srcloc !77
  %arrayidx.i.3 = getelementptr %struct.img_spdif_in, ptr %1, i32 0, i32 14, i32 3
  %19 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 %21) #9, !srcloc !77
  %suspend_clkgen = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %suspend_clkgen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %suspend_clkgen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #9, !srcloc !77
  %suspend_ctl = getelementptr inbounds %struct.img_spdif_in, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %suspend_ctl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %suspend_ctl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %31) #9, !srcloc !77
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %34 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i = icmp eq i32 %35, 2
  br i1 %cmp.i, label %if.then3, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %img_spdif_in_runtime_resume.exit.thread

img_spdif_in_runtime_resume.exit.thread:          ; preds = %if.then3.i.i, %entry.img_spdif_in_runtime_resume.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.img_spdif_in_runtime_resume.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.then3:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i, align 4
  %clk_sys.i21 = getelementptr inbounds %struct.img_spdif_in, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %clk_sys.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_sys.i21, align 4
  tail call void @clk_disable(ptr noundef %39) #9
  tail call void @clk_unprepare(ptr noundef %39) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %img_spdif_in_runtime_resume.exit.thread, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.i.ph.i, %img_spdif_in_runtime_resume.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_img_spdif_in__242_886_img_spdif_in_driver_init6, !1, !"__initcall__kmod_img_spdif_in__242_886_img_spdif_in_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/img/img-spdif-in.c", i32 886, i32 1}
!2 = !{ptr @__exitcall_img_spdif_in_driver_exit, !1, !"__exitcall_img_spdif_in_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../sound/soc/img/img-spdif-in.c", i32 888, i32 1}
!5 = !{ptr @__UNIQUE_ID_description244, !6, !"__UNIQUE_ID_description244", i1 false, i1 false}
!6 = !{!"../sound/soc/img/img-spdif-in.c", i32 889, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../sound/soc/img/img-spdif-in.c", i32 890, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/img/img-spdif-in.c", i32 879, i32 11}
!12 = !{ptr @img_spdif_in_driver, !13, !"img_spdif_in_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/img/img-spdif-in.c", i32 877, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/img/img-spdif-in.c", i32 741, i32 37}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/img/img-spdif-in.c", i32 744, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/img/img-spdif-in.c", i32 758, i32 53}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/img/img-spdif-in.c", i32 764, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @img_spdif_in_probe.__UNIQUE_ID_ddebug241, !21, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!26 = !{ptr @img_spdif_in_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../sound/soc/img/img-spdif-in.c", i32 773, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/img/img-spdif-in.c", i32 106, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @img_spdif_in_runtime_resume._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @img_spdif_in_runtime_resume._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @img_spdif_in_component, !37, !"img_spdif_in_component", i1 false, i1 false}
!37 = !{!"../sound/soc/img/img-spdif-in.c", i32 713, i32 46}
!38 = !{ptr @img_spdif_in_dai, !39, !"img_spdif_in_dai", i1 false, i1 false}
!39 = !{!"../sound/soc/img/img-spdif-in.c", i32 702, i32 34}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/img/img-spdif-in.c", i32 575, i32 11}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/img/img-spdif-in.c", i32 583, i32 11}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/img/img-spdif-in.c", i32 589, i32 11}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/img/img-spdif-in.c", i32 598, i32 11}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/img/img-spdif-in.c", i32 604, i32 11}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/img/img-spdif-in.c", i32 611, i32 11}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/img/img-spdif-in.c", i32 618, i32 11}
!54 = !{ptr @img_spdif_in_controls, !55, !"img_spdif_in_controls", i1 false, i1 false}
!55 = !{!"../sound/soc/img/img-spdif-in.c", i32 571, i32 32}
!56 = !{ptr @img_spdif_in_dai_ops, !57, !"img_spdif_in_dai_ops", i1 false, i1 false}
!57 = !{!"../sound/soc/img/img-spdif-in.c", i32 685, i32 37}
!58 = !{ptr @img_spdif_in_of_match, !59, !"img_spdif_in_of_match", i1 false, i1 false}
!59 = !{!"../sound/soc/img/img-spdif-in.c", i32 865, i32 34}
!60 = !{ptr @img_spdif_in_pm_ops, !61, !"img_spdif_in_pm_ops", i1 false, i1 false}
!61 = !{!"../sound/soc/img/img-spdif-in.c", i32 871, i32 32}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{i64 2148260399}
!73 = !{i64 745222, i64 745247, i64 745269, i64 745285, i64 745297, i64 745317, i64 745341, i64 745357, i64 745369}
!74 = !{i64 2148260587}
!75 = !{i64 2148742795, i64 2148742800, i64 2148742813, i64 2148742857, i64 2148742891, i64 2148742912}
!76 = !{i64 2155003658}
!77 = !{i64 6756325}
!78 = !{i64 6756743}
!79 = !{i64 2155004488}
!80 = !{i8 0, i8 2}
!81 = !{i32 0, i32 33}
