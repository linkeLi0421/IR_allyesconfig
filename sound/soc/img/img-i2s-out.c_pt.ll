; ModuleID = '/llk/IR_all_yes/sound/soc/img/img-i2s-out.c_pt.bc'
source_filename = "../sound/soc/img/img-i2s-out.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.img_i2s_out = type { ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, ptr, i32, ptr, i8, i32, ptr, %struct.snd_soc_dai_driver, i32, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_img_i2s_out__241_617_img_i2s_out_driver_init6 = internal global ptr @img_i2s_out_driver_init, section ".initcall6.init", align 4
@img_i2s_out_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_i2s_out_probe, ptr @img_i2s_out_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_i2s_out_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_i2s_out_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_i2s_out_driver_exit = internal global ptr @img_i2s_out_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [62 x i8] c"img_i2s_out.author=Damien Horsley <Damien.Horsley@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [46 x i8] c"img_i2s_out.description=IMG I2S Output Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [43 x i8] c"img_i2s_out.file=sound/soc/img/img-i2s-out\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [27 x i8] c"img_i2s_out.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"img-i2s-out\00", [20 x i8] zeroinitializer }, align 32
@img_i2s_out_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,i2s-out\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_i2s_out_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_i2s_out_suspend, ptr @img_i2s_out_resume, ptr @img_i2s_out_suspend, ptr @img_i2s_out_resume, ptr @img_i2s_out_suspend, ptr @img_i2s_out_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_i2s_out_runtime_suspend, ptr @img_i2s_out_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"img,i2s-channels\00", [47 x i8] zeroinitializer }, align 32
@img_i2s_out_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 451, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No img,i2s-channels property\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"img_i2s_out_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/img/img-i2s-out.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_i2s_out_probe._entry_ptr = internal global ptr @img_i2s_out_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rst\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No top level reset found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to acquire clock 'sys'\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to acquire clock 'ref'\0A\00", [33 x i8] zeroinitializer }, align 32
@img_i2s_out_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @img_i2s_out_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_i2s_out_hw_params, ptr null, ptr null, ptr @img_i2s_out_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@img_i2s_out_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@img_i2s_out_dma_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @img_i2s_out_dma_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@img_i2s_out_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 84, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_enable failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"img_i2s_out_runtime_resume\00", [37 x i8] zeroinitializer }, align 32
@img_i2s_out_runtime_resume._entry_ptr = internal global ptr @img_i2s_out_runtime_resume._entry, section ".printk_index", align 4
@img_i2s_out_runtime_resume._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 90, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@img_i2s_out_runtime_resume._entry_ptr.16 = internal global ptr @img_i2s_out_runtime_resume._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"img_i2s_out_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 608, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 610, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"img_i2s_out_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 596, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"img_i2s_out_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 602, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 449, i32 46 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 451, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 459, i32 58 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 462, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 464, i32 42 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 467, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 469, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 472, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"img_i2s_out_dai_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 381, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"img_i2s_out_component\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 396, i32 46 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"img_i2s_out_dma_config\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 421, i32 46 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 84, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private constant [31 x i8] c"../sound/soc/img/img-i2s-out.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 90, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_img_i2s_out_driver_exit, ptr @__initcall__kmod_img_i2s_out__241_617_img_i2s_out_driver_init6, ptr @img_i2s_out_driver_exit, ptr @img_i2s_out_probe._entry, ptr @img_i2s_out_probe._entry_ptr, ptr @img_i2s_out_runtime_resume._entry, ptr @img_i2s_out_runtime_resume._entry.15, ptr @img_i2s_out_runtime_resume._entry_ptr, ptr @img_i2s_out_runtime_resume._entry_ptr.16, ptr @img_i2s_out_driver, ptr @.str, ptr @img_i2s_out_of_match, ptr @img_i2s_out_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @img_i2s_out_dai_ops, ptr @img_i2s_out_component, ptr @img_i2s_out_dma_config, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_dma_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_out_runtime_resume._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_i2s_out_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_i2s_out_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_i2s_out_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !63
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 248, i32 noundef 3520) #9
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
  %dev4 = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev4, align 8
  %call5 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #9
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 5
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %max_i2s_chan, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %7 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_i2s_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i176 = icmp eq i32 %8, 0
  br i1 %cmp.i176, label %if.end16.get_count_order.exit_crit_edge, label %if.end.i

if.end16.get_count_order.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_count_order.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %9 = call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #9, !range !64
  %sub.i.i = sub nuw nsw i32 32, %9
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %if.end16.get_count_order.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i.i, %if.end.i ], [ -1, %if.end16.get_count_order.exit_crit_edge ]
  %mul = shl i32 32, %retval.0.i
  %add.ptr = getelementptr i8, ptr %call5, i32 %mul
  %channel_base = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %channel_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %channel_base, align 8
  %call.i177 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %rst = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i177, ptr %rst, align 4
  %cmp.i178 = icmp ugt ptr %call.i177, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then23, label %if.end28

if.then23:                                        ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call.i177 to i32
  %call27 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %12, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end28:                                         ; preds = %get_count_order.exit
  %call30 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %clk_sys = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %clk_sys to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call30, ptr %clk_sys, align 4
  %cmp.i179 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call30 to i32
  %call36 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %call39 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %clk_ref = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call39, ptr %clk_ref, align 8
  %cmp.i180 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call39 to i32
  %call45 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %16, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %17 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_i2s_chan, align 4
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #9
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !65

devm_kcalloc.exit.thread:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %suspend_ch_ctl186 = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 12
  %21 = ptrtoint ptr %suspend_ch_ctl186 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %suspend_ch_ctl186, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end46
  %22 = extractvalue { i32, i1 } %19, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %22, i32 noundef 3520) #9
  %suspend_ch_ctl = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 12
  %23 = ptrtoint ptr %suspend_ch_ctl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i, ptr %suspend_ch_ctl, align 4
  %tobool50.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool50.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end52

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %devm_kcalloc.exit
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %24 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end52.if.end62_crit_edge, label %if.then56

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then56:                                        ; preds = %if.end52
  %call58 = call i32 @img_i2s_out_runtime_resume(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.if.end62_crit_edge, label %if.then56.err_pm_disable_crit_edge

if.then56.err_pm_disable_crit_edge:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_disable

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end62:                                         ; preds = %if.then56.if.end62_crit_edge, %if.end52.if.end62_crit_edge
  %call.i181 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %cmp = icmp slt i32 %call.i181, 0
  br i1 %cmp, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %err_suspend

if.end67:                                         ; preds = %if.end62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #9, !srcloc !67
  %27 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_i2s_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp69188.not = icmp eq i32 %28, 0
  br i1 %cmp69188.not, label %if.end67.for.end_crit_edge, label %if.end67.for.body_crit_edge

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  br label %for.body

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end67.for.body_crit_edge
  %i.0189 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end67.for.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %channel_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel_base, align 8
  %mul.i = shl i32 %i.0189, 5
  %add.ptr.i182 = getelementptr i8, ptr %30, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i182, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 -2012479488) #9, !srcloc !67
  %inc = add nuw i32 %i.0189, 1
  %31 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_i2s_chan, align 4
  %cmp69 = icmp ult i32 %inc, %32
  br i1 %cmp69, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end67.for.end_crit_edge
  call fastcc void @img_i2s_out_reset(ptr noundef nonnull %call.i)
  %call.i183 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  %active_channels = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %active_channels to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %active_channels, align 8
  %34 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %res, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %dma_data = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dma_data, align 4
  %addr_width = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %addr_width, align 4
  %maxburst = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %maxburst, align 4
  %dai_driver = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 10
  %probe = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 10, i32 4
  %41 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @img_i2s_out_dai_probe, ptr %probe, align 8
  %channels_min = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 10, i32 11, i32 5
  %42 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %channels_min, align 4
  %43 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_i2s_chan, align 4
  %mul76 = shl i32 %44, 1
  %channels_max = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 10, i32 11, i32 6
  %45 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul76, ptr %channels_max, align 8
  %rates = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 10, i32 11, i32 2
  %46 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8190, ptr %rates, align 8
  %formats = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 10, i32 11, i32 1
  %47 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1024, ptr %formats, align 8
  %ops = getelementptr inbounds %struct.img_i2s_out, ptr %call.i, i32 0, i32 10, i32 8
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @img_i2s_out_dai_ops, ptr %ops, align 8
  %call86 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @img_i2s_out_component, ptr noundef %dai_driver, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %for.end.err_suspend_crit_edge

for.end.err_suspend_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end89:                                         ; preds = %for.end
  %call91 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef nonnull @img_i2s_out_dma_config, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end89.cleanup_crit_edge, label %if.end89.err_suspend_crit_edge

if.end89.err_suspend_crit_edge:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_suspend:                                      ; preds = %if.end89.err_suspend_crit_edge, %for.end.err_suspend_crit_edge, %if.then65
  %ret.0 = phi i32 [ %call.i181, %if.then65 ], [ %call86, %for.end.err_suspend_crit_edge ], [ %call91, %if.end89.err_suspend_crit_edge ]
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %49 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i184 = icmp eq i32 %50, 2
  br i1 %cmp.i184, label %err_suspend.err_pm_disable_crit_edge, label %if.then97

err_suspend.err_pm_disable_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_disable

if.then97:                                        ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  %call99 = call i32 @img_i2s_out_runtime_suspend(ptr noundef %dev1)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then97, %err_suspend.err_pm_disable_crit_edge, %if.then56.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_suspend.err_pm_disable_crit_edge ], [ %ret.0, %if.then97 ], [ %call58, %if.then56.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end89.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.then42, %if.then33, %if.then23, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ -22, %do.end ], [ %call27, %if.then23 ], [ %call36, %if.then33 ], [ %call45, %if.then42 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_dev_remove(ptr noundef %pdev) #2 align 64 {
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
  %clk_ref.i = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ref.i, align 8
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %clk_sys.i = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 1
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_sys = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_ref = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ref, align 8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i26.ph) #12
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
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !70
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_i2s_out_reset(ptr nocapture noundef readonly %i2s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2s, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %force_clk_active = getelementptr inbounds %struct.img_i2s_out, ptr %i2s, i32 0, i32 7
  %3 = ptrtoint ptr %force_clk_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %force_clk_active, align 4, !range !74
  %channel_base.i = getelementptr inbounds %struct.img_i2s_out, ptr %i2s, i32 0, i32 6
  %5 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel_base.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %8 = and i32 %7, -16777217
  %rst = getelementptr inbounds %struct.img_i2s_out, ptr %i2s, i32 0, i32 9
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %10) #9
  %11 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rst, align 4
  %call7 = tail call i32 @reset_control_deassert(ptr noundef %12) #9
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_out, ptr %i2s, i32 0, i32 5
  %13 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_i2s_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp35.not = icmp eq i32 %14, 0
  br i1 %cmp35.not, label %entry.for.cond8.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  %active_channels = getelementptr inbounds %struct.img_i2s_out, ptr %i2s, i32 0, i32 8
  %15 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp937.not = icmp eq i32 %16, 0
  br i1 %cmp937.not, label %for.cond8.preheader.for.end13_crit_edge, label %for.cond8.preheader.for.body10_crit_edge

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.cond8.preheader.for.end13_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel_base.i, align 8
  %mul.i = shl i32 %i.036, 5
  %add.ptr.i31 = getelementptr i8, ptr %18, i32 4
  %add.ptr1.i32 = getelementptr i8, ptr %add.ptr.i31, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i32, i32 %8) #9, !srcloc !67
  %inc = add nuw i32 %i.036, 1
  %19 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_i2s_chan, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond8.preheader_crit_edge

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %i.138 = phi i32 [ %inc12, %for.body10.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  %21 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel_base.i, align 8
  %mul.i.i = shl i32 %i.138, 5
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %24 = or i32 %23, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channel_base.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %26, i32 4
  %add.ptr1.i7.i = getelementptr i8, ptr %add.ptr.i6.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %24) #9, !srcloc !67
  %inc12 = add nuw i32 %i.138, 1
  %27 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active_channels, align 8
  %cmp9 = icmp ult i32 %inc12, %28
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end13_crit_edge

for.body10.for.end13_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.end13:                                        ; preds = %for.body10.for.end13_crit_edge, %for.cond8.preheader.for.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %spec.select.v = select i1 %tobool.not, i32 -16777234, i32 -16777218
  %spec.select = and i32 %spec.select.v, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  %31 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2s, align 8
  %add.ptr.i33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %30) #9, !srcloc !67
  %33 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2s, align 8
  %add.ptr.i.i34 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %36 = or i32 %35, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2s, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %36) #9, !srcloc !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_i2s_out_dai_probe(ptr nocapture noundef %dai) #6 align 64 {
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
  %dma_data = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 3
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_ref = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ref, align 8
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %clk_sys = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk_sys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_sys, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

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
define internal i32 @img_i2s_out_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %and = and i32 %fmt, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp = icmp eq i32 %and, 16
  %frombool = zext i1 %cmp to i8
  %spec.select = select i1 %cmp, i32 16, i32 0
  %4 = trunc i32 %fmt to i16
  %trunc = and i16 %4, -4096
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or2 = or i32 %spec.select, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %control_set.1 = phi i32 [ %or2, %sw.bb ], [ %spec.select, %entry.sw.epilog_crit_edge ]
  %and3 = lshr i32 %fmt, 8
  %6 = and i32 %and3, 15
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %6, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb4
    i32 2, label %sw.bb6
    i32 3, label %sw.epilog.sw.epilog12_crit_edge
    i32 4, label %sw.bb9
  ]

sw.epilog.sw.epilog12_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or5 = or i32 %control_set.1, 4
  br label %sw.epilog12

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or8 = or i32 %control_set.1, 12
  br label %sw.epilog12

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or10 = or i32 %control_set.1, 8
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.bb9, %sw.bb6, %sw.bb4, %sw.epilog.sw.epilog12_crit_edge
  %control_set.2 = phi i32 [ %or10, %sw.bb9 ], [ %control_set.1, %sw.epilog.sw.epilog12_crit_edge ], [ %or8, %sw.bb6 ], [ %or5, %sw.bb4 ]
  %and13 = and i32 %fmt, 15
  %8 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and13, label %sw.epilog12.cleanup_crit_edge [
    i32 1, label %sw.bb14
    i32 3, label %sw.epilog12.sw.epilog17_crit_edge
  ]

sw.epilog12.sw.epilog17_crit_edge:                ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog17

sw.epilog12.cleanup_crit_edge:                    ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %sw.bb14, %sw.epilog12.sw.epilog17_crit_edge
  %chan_control_set.0 = phi i32 [ 0, %sw.epilog12.sw.epilog17_crit_edge ], [ 2, %sw.bb14 ]
  %dev = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %sw.epilog17
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !70
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then20.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  br label %cleanup

if.end22:                                         ; preds = %sw.epilog17
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %17 = and i32 %16, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %17) #9, !srcloc !67
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %23 = and i32 %22, -1543503873
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %or25 = or i32 %24, %control_set.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or25) #9
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %add.ptr.i95 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %25) #9, !srcloc !67
  %active_channels = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 8
  %28 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %active_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp26111.not = icmp eq i32 %29, 0
  br i1 %cmp26111.not, label %if.end22.for.cond27.preheader_crit_edge, label %for.body.lr.ph

if.end22.for.cond27.preheader_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond27.preheader

for.body.lr.ph:                                   ; preds = %if.end22
  %channel_base.i.i = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 6
  br label %for.body

for.cond27.preheader:                             ; preds = %for.body.for.cond27.preheader_crit_edge, %if.end22.for.cond27.preheader_crit_edge
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_i2s_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp28113.not = icmp eq i32 %31, 0
  br i1 %cmp28113.not, label %for.cond27.preheader.for.cond37.preheader_crit_edge, label %for.body29.lr.ph

for.cond27.preheader.for.cond37.preheader_crit_edge: ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond37.preheader

for.body29.lr.ph:                                 ; preds = %for.cond27.preheader
  %channel_base.i = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 6
  br label %for.body29

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %32 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channel_base.i.i, align 8
  %mul.i.i = shl i32 %i.0112, 5
  %add.ptr.i.i96 = getelementptr i8, ptr %33, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i96, i32 %mul.i.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %35 = and i32 %34, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channel_base.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %37, i32 4
  %add.ptr1.i7.i = getelementptr i8, ptr %add.ptr.i6.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %35) #9, !srcloc !67
  %inc = add nuw i32 %i.0112, 1
  %38 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %active_channels, align 8
  %cmp26 = icmp ult i32 %inc, %39
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.for.cond27.preheader_crit_edge

for.body.for.cond27.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond27.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond37.preheader:                             ; preds = %for.body29.for.cond37.preheader_crit_edge, %for.cond27.preheader.for.cond37.preheader_crit_edge
  %40 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp39115.not = icmp eq i32 %41, 0
  br i1 %cmp39115.not, label %for.cond37.preheader.for.end43_crit_edge, label %for.body40.lr.ph

for.cond37.preheader.for.end43_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.body40.lr.ph:                                 ; preds = %for.cond37.preheader
  %channel_base.i.i102 = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 6
  br label %for.body40

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body29.lr.ph
  %i.1114 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc35, %for.body29.for.body29_crit_edge ]
  %42 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %channel_base.i, align 8
  %mul.i = shl i32 %i.1114, 5
  %add.ptr.i97 = getelementptr i8, ptr %43, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i97, i32 %mul.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %45 = and i32 %44, -33554433
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %or33 = or i32 %46, %chan_control_set.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %or33) #9
  %48 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %channel_base.i, align 8
  %add.ptr.i100 = getelementptr i8, ptr %49, i32 4
  %add.ptr1.i101 = getelementptr i8, ptr %add.ptr.i100, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i101, i32 %47) #9, !srcloc !67
  %inc35 = add nuw i32 %i.1114, 1
  %50 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_i2s_chan, align 4
  %cmp28 = icmp ult i32 %inc35, %51
  br i1 %cmp28, label %for.body29.for.body29_crit_edge, label %for.body29.for.cond37.preheader_crit_edge

for.body29.for.cond37.preheader_crit_edge:        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond37.preheader

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.body40.lr.ph
  %i.2116 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc42, %for.body40.for.body40_crit_edge ]
  %52 = ptrtoint ptr %channel_base.i.i102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channel_base.i.i102, align 8
  %mul.i.i103 = shl i32 %i.2116, 5
  %add.ptr.i.i104 = getelementptr i8, ptr %53, i32 4
  %add.ptr1.i.i105 = getelementptr i8, ptr %add.ptr.i.i104, i32 %mul.i.i103
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i105) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %55 = or i32 %54, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %channel_base.i.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %channel_base.i.i102, align 8
  %add.ptr.i6.i106 = getelementptr i8, ptr %57, i32 4
  %add.ptr1.i7.i107 = getelementptr i8, ptr %add.ptr.i6.i106, i32 %mul.i.i103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i107, i32 %55) #9, !srcloc !67
  %inc42 = add nuw i32 %i.2116, 1
  %58 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %active_channels, align 8
  %cmp39 = icmp ult i32 %inc42, %59
  br i1 %cmp39, label %for.body40.for.body40_crit_edge, label %for.body40.for.end43_crit_edge

for.body40.for.end43_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40

for.end43:                                        ; preds = %for.body40.for.end43_crit_edge, %for.cond37.preheader.for.end43_crit_edge
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 8
  %add.ptr.i.i108 = getelementptr i8, ptr %61, i32 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i108) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %63 = or i32 %62, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 8
  %add.ptr.i3.i109 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i109, i32 %63) #9, !srcloc !67
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  %call.i110 = tail call i32 @__pm_runtime_idle(ptr noundef %67, i32 noundef 5) #9
  %force_clk_active47 = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 7
  %68 = ptrtoint ptr %force_clk_active47 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %frombool, ptr %force_clk_active47, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %do.end11.i.i.i.i, %if.then20.cleanup_crit_edge, %sw.epilog12.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end43 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog12.cleanup_crit_edge ], [ %call.i, %if.then20.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i143 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i143 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %7, %entry.params_format.exit_crit_edge ], [ %9, %for.inc.i.i.params_format.exit_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !64
  %add.i.i = or i32 %10, %i.09.lcssa.i.i
  %arrayidx.i.i144 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i144, align 4
  %div141 = lshr i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i)
  %cmp.not = icmp ne i32 %add.i.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp4 = icmp ult i32 %12, 2
  %or.cond142 = select i1 %cmp.not, i1 true, i1 %cmp4
  br i1 %or.cond142, label %params_format.exit.cleanup_crit_edge, label %lor.lhs.false

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %params_format.exit
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_i2s_chan, align 4
  %mul = shl i32 %14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul)
  %cmp5 = icmp ule i32 %12, %mul
  %rem = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %tobool.not, %cmp5
  br i1 %or.cond, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %clk_ref = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_ref, align 8
  %mul9 = shl i32 %5, 8
  %call10 = tail call i32 @clk_round_rate(ptr noundef %16, i32 noundef %mul9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_ref, align 8
  %mul15 = mul i32 %5, 384
  %call16 = tail call i32 @clk_round_rate(ptr noundef %18, i32 noundef %mul15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %div20161163 = lshr i32 %call10, 8
  %sub = sub i32 %div20161163, %5
  %19 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div24162 = udiv i32 %call16, 384
  %sub25 = sub i32 %div24162, %5
  %20 = tail call i32 @llvm.abs.i32(i32 %sub25, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp33 = icmp sgt i32 %19, %20
  %21 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_ref, align 8
  %call16.call10 = select i1 %cmp33, i32 %call16, i32 %call10
  %call36 = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef %call16.call10) #9
  %23 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_ref, align 8
  %call41 = tail call i32 @clk_get_rate(ptr noundef %24) #9
  %div43 = sdiv i32 %call41, 256
  %sub44 = sub i32 %div43, %5
  %25 = tail call i32 @llvm.abs.i32(i32 %sub44, i1 false)
  %div53 = sdiv i32 %call41, 384
  %sub54 = sub i32 %div53, %5
  %26 = tail call i32 @llvm.abs.i32(i32 %sub54, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %26)
  %cmp62 = icmp sgt i32 %25, %26
  %control_set.0 = select i1 %cmp62, i32 32, i32 0
  %sub65 = shl i32 %div141, 13
  %shl = add i32 %sub65, 16769024
  %and = and i32 %shl, 16769024
  %or66 = or i32 %control_set.0, %and
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %30 = and i32 %29, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %30) #9, !srcloc !67
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %36 = and i32 %35, -551616257
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %or69 = or i32 %or66, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or69) #9
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %add.ptr.i145 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %38) #9, !srcloc !67
  %channel_base.i.i = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %div141, i32 1)
  br label %for.body

for.cond71.preheader:                             ; preds = %for.body
  %41 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_i2s_chan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %umax, i32 %42)
  %cmp73166 = icmp ult i32 %umax, %42
  br i1 %cmp73166, label %for.body74.lr.ph, label %for.cond71.preheader.for.end77_crit_edge

for.cond71.preheader.for.end77_crit_edge:         ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.body74.lr.ph:                                 ; preds = %for.cond71.preheader
  %channel_base.i.i147 = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 6
  br label %for.body74

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19
  %i.0165 = phi i32 [ 0, %if.end19 ], [ %inc, %for.body.for.body_crit_edge ]
  %43 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %channel_base.i.i, align 8
  %mul.i.i = shl i32 %i.0165, 5
  %add.ptr.i.i146 = getelementptr i8, ptr %44, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i146, i32 %mul.i.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %46 = or i32 %45, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channel_base.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %48, i32 4
  %add.ptr1.i7.i = getelementptr i8, ptr %add.ptr.i6.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %46) #9, !srcloc !67
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond71.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %for.body74.lr.ph
  %i.1167 = phi i32 [ %umax, %for.body74.lr.ph ], [ %inc76, %for.body74.for.body74_crit_edge ]
  %49 = ptrtoint ptr %channel_base.i.i147 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %channel_base.i.i147, align 8
  %mul.i.i148 = shl i32 %i.1167, 5
  %add.ptr.i.i149 = getelementptr i8, ptr %50, i32 4
  %add.ptr1.i.i150 = getelementptr i8, ptr %add.ptr.i.i149, i32 %mul.i.i148
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i150) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %52 = and i32 %51, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %channel_base.i.i147 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %channel_base.i.i147, align 8
  %add.ptr.i6.i151 = getelementptr i8, ptr %54, i32 4
  %add.ptr1.i7.i152 = getelementptr i8, ptr %add.ptr.i6.i151, i32 %mul.i.i148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i152, i32 %52) #9, !srcloc !67
  %inc76 = add nuw i32 %i.1167, 1
  %55 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_i2s_chan, align 4
  %cmp73 = icmp ult i32 %inc76, %56
  br i1 %cmp73, label %for.body74.for.body74_crit_edge, label %for.body74.for.end77_crit_edge

for.body74.for.end77_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

for.end77:                                        ; preds = %for.body74.for.end77_crit_edge, %for.cond71.preheader.for.end77_crit_edge
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 8
  %add.ptr.i.i153 = getelementptr i8, ptr %58, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i153) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %60 = or i32 %59, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 8
  %add.ptr.i3.i154 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i154, i32 %60) #9, !srcloc !67
  %active_channels = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 8
  %63 = ptrtoint ptr %active_channels to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div141, ptr %active_channels, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end77, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end77 ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge11
    i32 4, label %entry.sw.bb_crit_edge12
    i32 0, label %entry.sw.bb3_crit_edge
    i32 5, label %entry.sw.bb3_crit_edge13
    i32 3, label %entry.sw.bb3_crit_edge14
  ]

entry.sw.bb3_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !72
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %force_clk_active = getelementptr inbounds %struct.img_i2s_out, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %force_clk_active to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %force_clk_active, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %or = or i32 %8, 16
  %spec.select = select i1 %tobool.not, i32 %or, i32 %8
  %or2 = or i32 %spec.select, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or2) #9
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %add.ptr.i10 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %11) #9, !srcloc !67
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge13, %entry.sw.bb3_crit_edge14
  tail call fastcc void @img_i2s_out_reset(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_dma_prepare_slave_config(ptr noundef %st, ptr noundef %params, ptr noundef %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %st, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %st, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call2 = tail call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %st, ptr noundef %params, ptr noundef %sc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cond.i, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %sc, i32 0, i32 2
  %13 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dst_addr, align 4
  %addr_width = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 1
  %14 = ptrtoint ptr %addr_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %sc, i32 0, i32 4
  %16 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dst_addr_width, align 4
  %17 = shl i32 %1, 1
  %mul = and i32 %17, -4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %sc, i32 0, i32 6
  %18 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %dst_maxburst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_suspend(ptr noundef %dev) #2 align 64 {
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
  %call2 = tail call i32 @img_i2s_out_runtime_resume(ptr noundef %dev)
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
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_i2s_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not = icmp eq i32 %5, 0
  br i1 %cmp23.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %channel_base.i = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 6
  %suspend_ch_ctl = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel_base.i, align 8
  %mul.i = shl i32 %i.024, 5
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !72
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %10 = ptrtoint ptr %suspend_ch_ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %suspend_ch_ctl, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %i.024
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.024, 1
  %13 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_i2s_chan, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr.i22 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #9, !srcloc !72
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %suspend_ctl = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %suspend_ctl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %suspend_ctl, align 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  %clk_ref.i = getelementptr inbounds %struct.img_i2s_out, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_ref.i, align 8
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  %clk_sys.i = getelementptr inbounds %struct.img_i2s_out, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_sys.i, align 4
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_out_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @img_i2s_out_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_i2s_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not = icmp eq i32 %3, 0
  br i1 %cmp21.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %suspend_ch_ctl = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 12
  %channel_base.i = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %suspend_ch_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend_ch_ctl, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.022
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %9 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channel_base.i, align 8
  %mul.i = shl i32 %i.022, 5
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #9, !srcloc !67
  %inc = add nuw i32 %i.022, 1
  %11 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_i2s_chan, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %suspend_ctl = getelementptr inbounds %struct.img_i2s_out, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %suspend_ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %suspend_ctl, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %add.ptr.i20 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %15) #9, !srcloc !67
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %18 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp eq i32 %19, 2
  br i1 %cmp.i, label %if.then3, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  %clk_ref.i = getelementptr inbounds %struct.img_i2s_out, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_ref.i, align 8
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  %clk_sys.i = getelementptr inbounds %struct.img_i2s_out, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_sys.i, align 4
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_img_i2s_out__241_617_img_i2s_out_driver_init6, !1, !"__initcall__kmod_img_i2s_out__241_617_img_i2s_out_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/img/img-i2s-out.c", i32 617, i32 1}
!2 = !{ptr @__exitcall_img_i2s_out_driver_exit, !1, !"__exitcall_img_i2s_out_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../sound/soc/img/img-i2s-out.c", i32 619, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../sound/soc/img/img-i2s-out.c", i32 620, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/img/img-i2s-out.c", i32 621, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/img/img-i2s-out.c", i32 610, i32 11}
!12 = !{ptr @img_i2s_out_driver, !13, !"img_i2s_out_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/img/img-i2s-out.c", i32 608, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/img/img-i2s-out.c", i32 449, i32 46}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/img/img-i2s-out.c", i32 451, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @img_i2s_out_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @img_i2s_out_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/img/img-i2s-out.c", i32 459, i32 58}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/img/img-i2s-out.c", i32 462, i32 10}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/img/img-i2s-out.c", i32 464, i32 42}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/img/img-i2s-out.c", i32 467, i32 10}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/img/img-i2s-out.c", i32 469, i32 42}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/img/img-i2s-out.c", i32 472, i32 10}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/img/img-i2s-out.c", i32 84, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @img_i2s_out_runtime_resume._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @img_i2s_out_runtime_resume._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @img_i2s_out_runtime_resume._entry.15, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../sound/soc/img/img-i2s-out.c", i32 90, i32 3}
!43 = !{ptr @img_i2s_out_runtime_resume._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @img_i2s_out_dai_ops, !45, !"img_i2s_out_dai_ops", i1 false, i1 false}
!45 = !{!"../sound/soc/img/img-i2s-out.c", i32 381, i32 37}
!46 = !{ptr @img_i2s_out_component, !47, !"img_i2s_out_component", i1 false, i1 false}
!47 = !{!"../sound/soc/img/img-i2s-out.c", i32 396, i32 46}
!48 = !{ptr @img_i2s_out_dma_config, !49, !"img_i2s_out_dma_config", i1 false, i1 false}
!49 = !{!"../sound/soc/img/img-i2s-out.c", i32 421, i32 46}
!50 = !{ptr @img_i2s_out_of_match, !51, !"img_i2s_out_of_match", i1 false, i1 false}
!51 = !{!"../sound/soc/img/img-i2s-out.c", i32 596, i32 34}
!52 = !{ptr @img_i2s_out_pm_ops, !53, !"img_i2s_out_pm_ops", i1 false, i1 false}
!53 = !{!"../sound/soc/img/img-i2s-out.c", i32 602, i32 32}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i32 0, i32 33}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2154998125}
!67 = !{i64 6749258}
!68 = !{i64 2154999356}
!69 = !{i64 2148253332}
!70 = !{i64 738155, i64 738180, i64 738202, i64 738218, i64 738230, i64 738250, i64 738274, i64 738290, i64 738302}
!71 = !{i64 2148253520}
!72 = !{i64 6749676}
!73 = !{i64 2154998945}
!74 = !{i8 0, i8 2}
!75 = !{i64 2155000306}
