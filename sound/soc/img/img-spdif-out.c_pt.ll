; ModuleID = '/llk/IR_all_yes/sound/soc/img/img-spdif-out.c_pt.bc'
source_filename = "../sound/soc/img/img-spdif-out.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
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
%struct.img_spdif_out = type { %struct.spinlock, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, i32, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.82, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { %struct.anon.85, [40 x i8] }
%struct.anon.85 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.75, [128 x i8] }
%union.anon.75 = type { %union.anon.77 }
%union.anon.77 = type { [64 x i64] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.80, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.80 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_img_spdif_out__243_476_img_spdif_out_driver_init6 = internal global ptr @img_spdif_out_driver_init, section ".initcall6.init", align 4
@img_spdif_out_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_spdif_out_probe, ptr @img_spdif_out_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_spdif_out_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_spdif_out_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_spdif_out_driver_exit = internal global ptr @img_spdif_out_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author244 = internal constant [64 x i8] c"img_spdif_out.author=Damien Horsley <Damien.Horsley@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [50 x i8] c"img_spdif_out.description=IMG SPDIF Output driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [47 x i8] c"img_spdif_out.file=sound/soc/img/img-spdif-out\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [29 x i8] c"img_spdif_out.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"img-spdif-out\00", [18 x i8] zeroinitializer }, align 32
@img_spdif_out_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,spdif-out\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_spdif_out_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_spdif_out_suspend, ptr @img_spdif_out_resume, ptr @img_spdif_out_suspend, ptr @img_spdif_out_resume, ptr @img_spdif_out_suspend, ptr @img_spdif_out_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_spdif_out_runtime_suspend, ptr @img_spdif_out_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rst\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No top level reset found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to acquire clock 'sys'\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to acquire clock 'ref'\0A\00", [33 x i8] zeroinitializer }, align 32
@img_spdif_out_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&spdif->lock\00", [19 x i8] zeroinitializer }, align 32
@img_spdif_out_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@img_spdif_out_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @img_spdif_out_dai_probe, ptr null, ptr null, ptr null, ptr @img_spdif_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 1024, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@img_spdif_out_probe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"img_spdif_out\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"img_spdif_out_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/img/img-spdif-out.c\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Probe successful\0A\00", [46 x i8] zeroinitializer }, align 32
@img_spdif_out_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.10, i32 69, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_enable failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"img_spdif_out_runtime_resume\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_spdif_out_runtime_resume._entry_ptr = internal global ptr @img_spdif_out_runtime_resume._entry, section ".printk_index", align 4
@img_spdif_out_runtime_resume._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.10, i32 75, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@img_spdif_out_runtime_resume._entry_ptr.17 = internal global ptr @img_spdif_out_runtime_resume._entry.16, section ".printk_index", align 4
@img_spdif_out_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_spdif_out_hw_params, ptr null, ptr null, ptr @img_spdif_out_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@img_spdif_out_controls = internal global { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.18, i32 0, i32 1, i32 0, ptr @img_spdif_out_info, ptr @img_spdif_out_get_status_mask, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @img_spdif_out_info, ptr @img_spdif_out_get_status, ptr @img_spdif_out_set_status, %union.anon.86 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@img_spdif_out_hw_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.20, ptr @.str.10, ptr @.str.21, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"img_spdif_out_hw_params\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hw_params rate %ld channels %u format %u\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"img_spdif_out_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 467, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 469, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"img_spdif_out_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 455, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"img_spdif_out_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 461, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 344, i32 60 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 347, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 349, i32 44 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 352, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 354, i32 44 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 357, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 377, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"img_spdif_out_component\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 318, i32 46 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"img_spdif_out_dai\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 307, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 393, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 69, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 75, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"img_spdif_out_dai_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 290, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"img_spdif_out_controls\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 186, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 190, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 196, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [33 x i8] c"../sound/soc/img/img-spdif-out.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 245, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_img_spdif_out_driver_exit, ptr @__initcall__kmod_img_spdif_out__243_476_img_spdif_out_driver_init6, ptr @img_spdif_out_driver_exit, ptr @img_spdif_out_runtime_resume._entry, ptr @img_spdif_out_runtime_resume._entry.16, ptr @img_spdif_out_runtime_resume._entry_ptr, ptr @img_spdif_out_runtime_resume._entry_ptr.17, ptr @img_spdif_out_driver, ptr @.str, ptr @img_spdif_out_of_match, ptr @img_spdif_out_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @img_spdif_out_probe.__key, ptr @.str.7, ptr @img_spdif_out_component, ptr @img_spdif_out_dai, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @img_spdif_out_dai_ops, ptr @img_spdif_out_controls, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_runtime_resume._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spdif_out_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_spdif_out_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_spdif_out_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_spdif_out_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !74
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 112, i32 noundef 3520) #9
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
  %dev4 = getelementptr inbounds %struct.img_spdif_out, ptr %call.i, i32 0, i32 5
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
  %base10 = getelementptr inbounds %struct.img_spdif_out, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %base10, align 4
  %call.i135 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %rst = getelementptr inbounds %struct.img_spdif_out, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i135, ptr %rst, align 4
  %cmp.i136 = icmp ugt ptr %call.i135, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call.i135 to i32
  %call19 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %call22 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  %clk_sys = getelementptr inbounds %struct.img_spdif_out, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk_sys to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %clk_sys, align 4
  %cmp.i137 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call22 to i32
  %call28 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %call31 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #9
  %clk_ref = getelementptr inbounds %struct.img_spdif_out, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call31, ptr %clk_ref, align 4
  %cmp.i138 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call31 to i32
  %call37 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end38.if.end48_crit_edge, label %if.then42

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then42:                                        ; preds = %if.end38
  %call44 = call i32 @img_spdif_out_runtime_resume(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then42.if.end48_crit_edge, label %if.then42.err_pm_disable_crit_edge

if.then42.err_pm_disable_crit_edge:               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_disable

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48:                                         ; preds = %if.then42.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %call.i139 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp = icmp slt i32 %call.i139, 0
  br i1 %cmp, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %err_suspend

if.end53:                                         ; preds = %if.end48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base10, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #9, !srcloc !76
  call fastcc void @img_spdif_out_reset(ptr noundef nonnull %call.i)
  %call.i140 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @img_spdif_out_probe.__key, i16 noundef signext 3) #9
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %dma_data = getelementptr inbounds %struct.img_spdif_out, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dma_data, align 4
  %addr_width = getelementptr inbounds %struct.img_spdif_out, ptr %call.i, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %addr_width, align 4
  %maxburst = getelementptr inbounds %struct.img_spdif_out, ptr %call.i, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %maxburst, align 4
  %call60 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @img_spdif_out_component, ptr noundef nonnull @img_spdif_out_dai, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end53.err_suspend_crit_edge

if.end53.err_suspend_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end63:                                         ; preds = %if.end53
  %call65 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body69, label %if.end63.err_suspend_crit_edge

if.end63.err_suspend_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

do.body69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_spdif_out_probe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_spdif_out_probe, %if.then74)) #9
          to label %cleanup [label %if.then74], !srcloc !77

if.then74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_spdif_out_probe.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

err_suspend:                                      ; preds = %if.end63.err_suspend_crit_edge, %if.end53.err_suspend_crit_edge, %if.then51
  %ret.0 = phi i32 [ %call.i139, %if.then51 ], [ %call60, %if.end53.err_suspend_crit_edge ], [ %call65, %if.end63.err_suspend_crit_edge ]
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %21 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i141 = icmp eq i32 %22, 2
  br i1 %cmp.i141, label %err_suspend.err_pm_disable_crit_edge, label %if.then81

err_suspend.err_pm_disable_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_disable

if.then81:                                        ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  %call83 = call i32 @img_spdif_out_runtime_suspend(ptr noundef %dev1)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then81, %err_suspend.err_pm_disable_crit_edge, %if.then42.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_suspend.err_pm_disable_crit_edge ], [ %ret.0, %if.then81 ], [ %call44, %if.then42.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.then74, %do.body69, %if.then34, %if.then25, %if.then15, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %call19, %if.then15 ], [ %call28, %if.then25 ], [ %call37, %if.then34 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then74 ], [ 0, %do.body69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_dev_remove(ptr noundef %pdev) #2 align 64 {
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
  %clk_ref.i = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ref.i, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %clk_sys.i = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_sys.i, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_sys = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 2
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
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_ref = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ref, align 4
  %call.i20 = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i24, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.end.i24:                                       ; preds = %if.end
  %call1.i22 = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool2.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool2.not.i23, label %if.end.i24.cleanup_crit_edge, label %if.then3.i25

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i25:                                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i25, %if.end.do.end7_crit_edge
  %retval.0.i26.ph = phi i32 [ %call1.i22, %if.then3.i25 ], [ %call.i20, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i26.ph) #12
  %6 = ptrtoint ptr %clk_sys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_sys, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.i24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i26.ph, %do.end7 ], [ 0, %if.end.i24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !79
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_spdif_out_reset(ptr nocapture noundef readonly %spdif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.img_spdif_out, ptr %spdif, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %rst = getelementptr inbounds %struct.img_spdif_out, ptr %spdif, i32 0, i32 6
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %11) #9
  %12 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rst, align 4
  %call5 = tail call i32 @reset_control_deassert(ptr noundef %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %3) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %6) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %9) #9, !srcloc !76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_ref = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ref, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %clk_sys = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk_sys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_sys, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_dai_probe(ptr noundef %dai) #2 align 64 {
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
  %dma_data = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 4
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %capture_dma_data.i, align 4
  %call1 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @img_spdif_out_controls, i32 noundef 2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_spdif_out_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
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
define internal i32 @img_spdif_out_get_status_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_get_status(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
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
  %base.i = getelementptr inbounds %struct.img_spdif_out, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !81
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %conv7 = trunc i32 %9 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %value, align 8
  %shr = lshr i32 %9, 8
  %conv9 = trunc i32 %shr to i8
  %arrayidx12 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %arrayidx12, align 1
  %shr13 = lshr i32 %9, 16
  %conv15 = trunc i32 %shr13 to i8
  %arrayidx18 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv15, ptr %arrayidx18, align 2
  %shr19 = lshr i32 %9, 24
  %conv21 = trunc i32 %shr19 to i8
  %arrayidx24 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv21, ptr %arrayidx24, align 1
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #9, !srcloc !81
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %conv28 = trunc i32 %17 to i8
  %arrayidx31 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv28, ptr %arrayidx31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_set_status(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %arrayidx = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 2
  %conv4 = zext i8 %9 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl5, %shl
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %or11 = or i32 %or, %shl10
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value, align 8
  %conv15 = zext i8 %13 to i32
  %or16 = or i32 %or11, %conv15
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %or16) #9
  %base.i = getelementptr inbounds %struct.img_spdif_out, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #9, !srcloc !76
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %20 = and i32 %19, 16777215
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx26 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx26, align 4
  %conv27 = zext i8 %23 to i32
  %or29 = or i32 %21, %conv27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or29) #9
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %24) #9, !srcloc !76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call20) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i114 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i114 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %7, %entry.if.then.i.i_crit_edge ], [ %10, %for.inc.i.i.if.then.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !83
  %add.i.i = or i32 %8, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %arrayidx.i.i115 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i115, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_spdif_out_hw_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_spdif_out_hw_params, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_spdif_out_hw_params.__UNIQUE_ID_ddebug241, ptr noundef %14, ptr noundef nonnull @.str.21, i32 noundef %5, i32 noundef %12, i32 noundef %retval.0.i.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %params_format.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retval.0.i.i)
  %cmp.not = icmp eq i32 %retval.0.i.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp9.not = icmp eq i32 %12, 2
  %or.cond = select i1 %cmp.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %clk_ref = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_ref, align 4
  %mul = shl i32 %5, 8
  %call12 = tail call i32 @clk_round_rate(ptr noundef %16, i32 noundef %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_ref, align 4
  %mul17 = mul i32 %5, 384
  %call18 = tail call i32 @clk_round_rate(ptr noundef %18, i32 noundef %mul17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %div119121 = lshr i32 %call12, 8
  %sub = sub i32 %div119121, %5
  %19 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div26120 = udiv i32 %call18, 384
  %sub27 = sub i32 %div26120, %5
  %20 = tail call i32 @llvm.abs.i32(i32 %sub27, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp35 = icmp sgt i32 %19, %20
  %21 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_ref, align 4
  %call18.call12 = select i1 %cmp35, i32 %call18, i32 %call12
  %call40 = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef %call18.call12) #9
  %23 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_ref, align 4
  %call43 = tail call i32 @clk_get_rate(ptr noundef %24) #9
  %div45 = sdiv i32 %call43, 256
  %sub46 = sub i32 %div45, %5
  %25 = tail call i32 @llvm.abs.i32(i32 %sub46, i1 false)
  %div55 = sdiv i32 %call43, 384
  %sub56 = sub i32 %div55, %5
  %26 = tail call i32 @llvm.abs.i32(i32 %sub56, i1 false)
  %base.i = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %26)
  %cmp65.not = icmp sgt i32 %25, %26
  %30 = and i32 %29, -67108865
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %masksel = select i1 %cmp65.not, i32 4, i32 0
  %reg.0 = or i32 %masksel, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #9
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %32) #9, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %do.end.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call18, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge18
    i32 4, label %entry.sw.bb_crit_edge19
    i32 0, label %entry.do.body3_crit_edge
    i32 5, label %entry.do.body3_crit_edge20
    i32 3, label %entry.do.body3_crit_edge21
  ]

entry.do.body3_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

entry.do.body3_crit_edge20:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19
  %base.i = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %8) #9, !srcloc !76
  br label %cleanup

do.body3:                                         ; preds = %entry.do.body3_crit_edge, %entry.do.body3_crit_edge20, %entry.do.body3_crit_edge21
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %base.i.i = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %14 = and i32 %13, -16777217
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %16, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %rst.i = getelementptr inbounds %struct.img_spdif_out, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rst.i, align 4
  %call3.i = tail call i32 @reset_control_assert(ptr noundef %22) #9
  %23 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rst.i, align 4
  %call5.i = tail call i32 @reset_control_deassert(ptr noundef %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %14) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %17) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %20) #9, !srcloc !76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_suspend(ptr noundef %dev) #2 align 64 {
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
  %call2 = tail call i32 @img_spdif_out_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %base.i = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !81
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %suspend_ctl = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %suspend_ctl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %suspend_ctl, align 4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #9, !srcloc !81
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %suspend_csl = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %suspend_csl to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %suspend_csl, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #9, !srcloc !81
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %suspend_csh = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %suspend_csh to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %suspend_csh, align 4
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i, align 4
  %clk_ref.i = getelementptr inbounds %struct.img_spdif_out, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_ref.i, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  tail call void @clk_unprepare(ptr noundef %22) #9
  %clk_sys.i = getelementptr inbounds %struct.img_spdif_out, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_sys.i, align 4
  tail call void @clk_disable(ptr noundef %24) #9
  tail call void @clk_unprepare(ptr noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spdif_out_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @img_spdif_out_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend_ctl = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %suspend_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_ctl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %base.i = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !76
  %suspend_csl = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %suspend_csl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %suspend_csl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %9) #9, !srcloc !76
  %suspend_csh = getelementptr inbounds %struct.img_spdif_out, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %suspend_csh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %suspend_csh, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %14) #9, !srcloc !76
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %17 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp eq i32 %18, 2
  br i1 %cmp.i, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i, align 4
  %clk_ref.i = getelementptr inbounds %struct.img_spdif_out, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_ref.i, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  tail call void @clk_unprepare(ptr noundef %22) #9
  %clk_sys.i = getelementptr inbounds %struct.img_spdif_out, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_sys.i, align 4
  tail call void @clk_disable(ptr noundef %24) #9
  tail call void @clk_unprepare(ptr noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_img_spdif_out__243_476_img_spdif_out_driver_init6, !1, !"__initcall__kmod_img_spdif_out__243_476_img_spdif_out_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/img/img-spdif-out.c", i32 476, i32 1}
!2 = !{ptr @__exitcall_img_spdif_out_driver_exit, !1, !"__exitcall_img_spdif_out_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author244, !4, !"__UNIQUE_ID_author244", i1 false, i1 false}
!4 = !{!"../sound/soc/img/img-spdif-out.c", i32 478, i32 1}
!5 = !{ptr @__UNIQUE_ID_description245, !6, !"__UNIQUE_ID_description245", i1 false, i1 false}
!6 = !{!"../sound/soc/img/img-spdif-out.c", i32 479, i32 1}
!7 = !{ptr @__UNIQUE_ID_file246, !8, !"__UNIQUE_ID_file246", i1 false, i1 false}
!8 = !{!"../sound/soc/img/img-spdif-out.c", i32 480, i32 1}
!9 = !{ptr @__UNIQUE_ID_license247, !8, !"__UNIQUE_ID_license247", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/img/img-spdif-out.c", i32 469, i32 11}
!12 = !{ptr @img_spdif_out_driver, !13, !"img_spdif_out_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/img/img-spdif-out.c", i32 467, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/img/img-spdif-out.c", i32 344, i32 60}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/img/img-spdif-out.c", i32 347, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/img/img-spdif-out.c", i32 349, i32 44}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/img/img-spdif-out.c", i32 352, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/img/img-spdif-out.c", i32 354, i32 44}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/img/img-spdif-out.c", i32 357, i32 10}
!26 = !{ptr @img_spdif_out_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../sound/soc/img/img-spdif-out.c", i32 377, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/img/img-spdif-out.c", i32 393, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @img_spdif_out_probe.__UNIQUE_ID_ddebug242, !30, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/img/img-spdif-out.c", i32 69, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @img_spdif_out_runtime_resume._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @img_spdif_out_runtime_resume._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @img_spdif_out_runtime_resume._entry.16, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../sound/soc/img/img-spdif-out.c", i32 75, i32 3}
!44 = !{ptr @img_spdif_out_runtime_resume._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @img_spdif_out_component, !46, !"img_spdif_out_component", i1 false, i1 false}
!46 = !{!"../sound/soc/img/img-spdif-out.c", i32 318, i32 46}
!47 = !{ptr @img_spdif_out_dai, !48, !"img_spdif_out_dai", i1 false, i1 false}
!48 = !{!"../sound/soc/img/img-spdif-out.c", i32 307, i32 34}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/img/img-spdif-out.c", i32 190, i32 11}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/img/img-spdif-out.c", i32 196, i32 11}
!53 = !{ptr @img_spdif_out_controls, !54, !"img_spdif_out_controls", i1 false, i1 false}
!54 = !{!"../sound/soc/img/img-spdif-out.c", i32 186, i32 32}
!55 = !{ptr @img_spdif_out_dai_ops, !56, !"img_spdif_out_dai_ops", i1 false, i1 false}
!56 = !{!"../sound/soc/img/img-spdif-out.c", i32 290, i32 37}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/img/img-spdif-out.c", i32 245, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @img_spdif_out_hw_params.__UNIQUE_ID_ddebug241, !58, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!61 = !{ptr @img_spdif_out_of_match, !62, !"img_spdif_out_of_match", i1 false, i1 false}
!62 = !{!"../sound/soc/img/img-spdif-out.c", i32 455, i32 34}
!63 = !{ptr @img_spdif_out_pm_ops, !64, !"img_spdif_out_pm_ops", i1 false, i1 false}
!64 = !{!"../sound/soc/img/img-spdif-out.c", i32 461, i32 32}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2154994811}
!76 = !{i64 6745938}
!77 = !{i64 2148732408, i64 2148732413, i64 2148732426, i64 2148732470, i64 2148732504, i64 2148732525}
!78 = !{i64 2148250012}
!79 = !{i64 734835, i64 734860, i64 734882, i64 734898, i64 734910, i64 734930, i64 734954, i64 734970, i64 734982}
!80 = !{i64 2148250200}
!81 = !{i64 6746356}
!82 = !{i64 2154995641}
!83 = !{i32 0, i32 33}
