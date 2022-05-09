; ModuleID = '/llk/IR_all_yes/sound/soc/img/img-i2s-in.c_pt.bc'
source_filename = "../sound/soc/img/img-i2s-in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.img_i2s_in = type { ptr, ptr, %struct.snd_dmaengine_dai_dma_data, ptr, i32, ptr, i32, %struct.snd_soc_dai_driver, i32, ptr }
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

@__initcall__kmod_img_i2s_in__242_615_img_i2s_in_driver_init6 = internal global ptr @img_i2s_in_driver_init, section ".initcall6.init", align 4
@img_i2s_in_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_i2s_in_probe, ptr @img_i2s_in_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_i2s_in_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_i2s_in_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_i2s_in_driver_exit = internal global ptr @img_i2s_in_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [61 x i8] c"img_i2s_in.author=Damien Horsley <Damien.Horsley@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [44 x i8] c"img_i2s_in.description=IMG I2S Input Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [41 x i8] c"img_i2s_in.file=sound/soc/img/img-i2s-in\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [26 x i8] c"img_i2s_in.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"img-i2s-in\00", [21 x i8] zeroinitializer }, align 32
@img_i2s_in_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,i2s-in\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_i2s_in_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_i2s_in_suspend, ptr @img_i2s_in_resume, ptr @img_i2s_in_suspend, ptr @img_i2s_in_resume, ptr @img_i2s_in_suspend, ptr @img_i2s_in_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_i2s_in_runtime_suspend, ptr @img_i2s_in_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"img,i2s-channels\00", [47 x i8] zeroinitializer }, align 32
@img_i2s_in_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No img,i2s-channels property\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"img_i2s_in_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/img/img-i2s-in.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_i2s_in_probe._entry_ptr = internal global ptr @img_i2s_in_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to acquire clock 'sys'\0A\00", [33 x i8] zeroinitializer }, align 32
@img_i2s_in_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @img_i2s_in_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_i2s_in_hw_params, ptr null, ptr null, ptr @img_i2s_in_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rst\00", [28 x i8] zeroinitializer }, align 32
@img_i2s_in_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"img_i2s_in\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No top level reset found\0A\00", [38 x i8] zeroinitializer }, align 32
@img_i2s_in_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@img_i2s_in_dma_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @img_i2s_in_dma_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@img_i2s_in_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 81, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable sys clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"img_i2s_in_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@img_i2s_in_runtime_resume._entry_ptr = internal global ptr @img_i2s_in_runtime_resume._entry, section ".printk_index", align 4
@img_i2s_in_check_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Sys clock rate %u insufficient for sample rate %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"img_i2s_in_check_rate\00", [42 x i8] zeroinitializer }, align 32
@img_i2s_in_check_rate._entry_ptr = internal global ptr @img_i2s_in_check_rate._entry, section ".printk_index", align 4
@switch.table.img_i2s_in_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 8, i32 0, i32 8, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.img_i2s_in_set_fmt.16 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 128, i32 128], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 10]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"img_i2s_in_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 606, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 608, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"img_i2s_in_of_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 594, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"img_i2s_in_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 600, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 443, i32 46 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 445, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 453, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 456, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"img_i2s_in_dai_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 375, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 480, i32 46 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 488, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"img_i2s_in_component\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 390, i32 46 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"img_i2s_in_dma_config\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 415, i32 46 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 81, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [30 x i8] c"../sound/soc/img/img-i2s-in.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 205, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [32 x i8] c"switch.table.img_i2s_in_set_fmt\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [35 x i8] c"switch.table.img_i2s_in_set_fmt.16\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_img_i2s_in_driver_exit, ptr @__initcall__kmod_img_i2s_in__242_615_img_i2s_in_driver_init6, ptr @img_i2s_in_check_rate._entry, ptr @img_i2s_in_check_rate._entry_ptr, ptr @img_i2s_in_driver_exit, ptr @img_i2s_in_probe._entry, ptr @img_i2s_in_probe._entry_ptr, ptr @img_i2s_in_runtime_resume._entry, ptr @img_i2s_in_runtime_resume._entry_ptr, ptr @img_i2s_in_driver, ptr @.str, ptr @img_i2s_in_of_match, ptr @img_i2s_in_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @img_i2s_in_dai_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @img_i2s_in_component, ptr @img_i2s_in_dma_config, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.img_i2s_in_set_fmt, ptr @switch.table.img_i2s_in_set_fmt.16], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_dma_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2s_in_check_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.img_i2s_in_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.img_i2s_in_set_fmt.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_i2s_in_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_i2s_in_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_i2s_in_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !63
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 240, i32 noundef 3520) #9
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
  %dev2 = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %max_i2s_chan, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool11.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool11.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_i2s_chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i175 = icmp eq i32 %8, 0
  br i1 %cmp.i175, label %if.end13.get_count_order.exit_crit_edge, label %if.end.i

if.end13.get_count_order.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_count_order.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %9 = call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #9, !range !64
  %sub.i.i = sub nuw nsw i32 32, %9
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %if.end13.get_count_order.exit_crit_edge
  %retval.0.i176 = phi i32 [ %cond.i.i, %if.end.i ], [ -1, %if.end13.get_count_order.exit_crit_edge ]
  %mul = shl i32 32, %retval.0.i176
  %add.ptr = getelementptr i8, ptr %call3, i32 %mul
  %channel_base = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %channel_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %channel_base, align 4
  %call16 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %clk_sys = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %clk_sys to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %clk_sys, align 4
  %cmp.i177 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then19, label %if.end23

if.then19:                                        ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call16 to i32
  %call22 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %12, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end23:                                         ; preds = %get_count_order.exit
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %13 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end23.if.end33_crit_edge, label %if.then27

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then27:                                        ; preds = %if.end23
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %clk_sys.i = getelementptr inbounds %struct.img_i2s_in, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_sys.i, align 4
  %call.i.i179 = call i32 @clk_prepare(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %tobool.not.i.i180 = icmp eq i32 %call.i.i179, 0
  br i1 %tobool.not.i.i180, label %if.end.i.i, label %if.then27.img_i2s_in_runtime_resume.exit_crit_edge

if.then27.img_i2s_in_runtime_resume.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_i2s_in_runtime_resume.exit

if.end.i.i:                                       ; preds = %if.then27
  %call1.i.i = call i32 @clk_enable(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end33_crit_edge, label %if.then3.i.i

if.end.i.i.if.end33_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %17) #9
  br label %img_i2s_in_runtime_resume.exit

img_i2s_in_runtime_resume.exit:                   ; preds = %if.then3.i.i, %if.then27.img_i2s_in_runtime_resume.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i179, %if.then27.img_i2s_in_runtime_resume.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  br label %err_pm_disable

if.end33:                                         ; preds = %if.end.i.i.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %call.i182 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp.i183 = icmp slt i32 %call.i182, 0
  br i1 %cmp.i183, label %if.then.i, label %if.end37

if.then.i:                                        ; preds = %if.end33
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !66
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_suspend_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_suspend_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !67
  br label %err_suspend

if.end37:                                         ; preds = %if.end33
  %active_channels = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %active_channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %active_channels, align 8
  %20 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %dma_data = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dma_data, align 8
  %addr_width = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %addr_width, align 4
  %dai_driver = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 7
  %probe = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @img_i2s_in_dai_probe, ptr %probe, align 8
  %channels_min = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 7, i32 10, i32 5
  %27 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %channels_min, align 4
  %28 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_i2s_chan, align 8
  %mul41 = shl i32 %29, 1
  %channels_max = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 7, i32 10, i32 6
  %30 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul41, ptr %channels_max, align 8
  %rates = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 7, i32 10, i32 2
  %31 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8190, ptr %rates, align 8
  %formats = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 7, i32 10, i32 1
  %32 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1092, ptr %formats, align 8
  %ops = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 7, i32 8
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @img_i2s_in_dai_ops, ptr %ops, align 8
  %call.i185 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %cmp.i186 = icmp ugt ptr %call.i185, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end37
  %cmp53 = icmp eq ptr %call.i185, inttoptr (i32 -517 to ptr)
  br i1 %cmp53, label %if.then54, label %do.body58

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %call.i187 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  br label %err_suspend

do.body58:                                        ; preds = %if.then51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_i2s_in_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_i2s_in_probe, %if.then63)) #9
          to label %do.end66 [label %if.then63], !srcloc !68

if.then63:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_i2s_in_probe.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.body58
  call fastcc void @img_i2s_in_disable(ptr noundef nonnull %call.i)
  %34 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_i2s_chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp68204.not = icmp eq i32 %35, 0
  br i1 %cmp68204.not, label %do.end66.if.end71_crit_edge, label %do.end66.for.body_crit_edge

do.end66.for.body_crit_edge:                      ; preds = %do.end66
  br label %for.body

do.end66.if.end71_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end66.for.body_crit_edge
  %i.0205 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end66.for.body_crit_edge ]
  %36 = ptrtoint ptr %channel_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channel_base, align 4
  %mul.i.i = shl i32 %i.0205, 5
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %39 = and i32 %38, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %channel_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channel_base, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %41, i32 4
  %add.ptr1.i7.i = getelementptr i8, ptr %add.ptr.i6.i, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %39) #9, !srcloc !72
  %inc = add nuw i32 %i.0205, 1
  %42 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_i2s_chan, align 8
  %cmp68 = icmp ult i32 %inc, %43
  br i1 %cmp68, label %for.body.for.body_crit_edge, label %for.body.if.end71_crit_edge

for.body.if.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call69 = call i32 @reset_control_assert(ptr noundef %call.i185) #9
  %call70 = call i32 @reset_control_deassert(ptr noundef %call.i185) #9
  br label %if.end71

if.end71:                                         ; preds = %if.else, %for.body.if.end71_crit_edge, %do.end66.if.end71_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %45, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !72
  %46 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_i2s_chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp74206.not = icmp eq i32 %47, 0
  br i1 %cmp74206.not, label %if.end71.for.end78_crit_edge, label %if.end71.for.body75_crit_edge

if.end71.for.body75_crit_edge:                    ; preds = %if.end71
  br label %for.body75

if.end71.for.end78_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %if.end71.for.body75_crit_edge
  %i.1207 = phi i32 [ %inc77, %for.body75.for.body75_crit_edge ], [ 0, %if.end71.for.body75_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %channel_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %channel_base, align 4
  %mul.i = shl i32 %i.1207, 5
  %add.ptr.i188 = getelementptr i8, ptr %49, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i188, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 67371520) #9, !srcloc !72
  %inc77 = add nuw i32 %i.1207, 1
  %50 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_i2s_chan, align 8
  %cmp74 = icmp ult i32 %inc77, %51
  br i1 %cmp74, label %for.body75.for.body75_crit_edge, label %for.body75.for.end78_crit_edge

for.body75.for.end78_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body75

for.end78:                                        ; preds = %for.body75.for.end78_crit_edge, %if.end71.for.end78_crit_edge
  %call.i189 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  %52 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_i2s_chan, align 8
  %54 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 4) #9
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !74

devm_kcalloc.exit.thread:                         ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #11
  %suspend_ch_ctl202 = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 9
  %56 = ptrtoint ptr %suspend_ch_ctl202 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %suspend_ch_ctl202, align 4
  br label %err_suspend

devm_kcalloc.exit:                                ; preds = %for.end78
  %57 = extractvalue { i32, i1 } %54, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %57, i32 noundef 3520) #9
  %suspend_ch_ctl = getelementptr inbounds %struct.img_i2s_in, ptr %call.i, i32 0, i32 9
  %58 = ptrtoint ptr %suspend_ch_ctl to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call5.i.i, ptr %suspend_ch_ctl, align 4
  %tobool84.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool84.not, label %devm_kcalloc.exit.err_suspend_crit_edge, label %if.end86

devm_kcalloc.exit.err_suspend_crit_edge:          ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end86:                                         ; preds = %devm_kcalloc.exit
  %call88 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @img_i2s_in_component, ptr noundef %dai_driver, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end86.err_suspend_crit_edge

if.end86.err_suspend_crit_edge:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end91:                                         ; preds = %if.end86
  %call92 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef nonnull @img_i2s_in_dma_config, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end91.cleanup_crit_edge, label %if.end91.err_suspend_crit_edge

if.end91.err_suspend_crit_edge:                   ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_suspend:                                      ; preds = %if.end91.err_suspend_crit_edge, %if.end86.err_suspend_crit_edge, %devm_kcalloc.exit.err_suspend_crit_edge, %devm_kcalloc.exit.thread, %if.then54, %do.end11.i.i.i.i.i, %if.then.i.err_suspend_crit_edge
  %ret.0 = phi i32 [ -517, %if.then54 ], [ %call88, %if.end86.err_suspend_crit_edge ], [ %call92, %if.end91.err_suspend_crit_edge ], [ -12, %devm_kcalloc.exit.err_suspend_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call.i182, %if.then.i.err_suspend_crit_edge ], [ %call.i182, %do.end11.i.i.i.i.i ]
  %59 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i192 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i192)
  %tobool.not.i193 = icmp ult i16 %bf.load.i192, 8192
  br i1 %tobool.not.i193, label %err_suspend.err_pm_disable_crit_edge, label %if.then98

err_suspend.err_pm_disable_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_disable

if.then98:                                        ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i, align 4
  %clk_sys.i195 = getelementptr inbounds %struct.img_i2s_in, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %clk_sys.i195 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk_sys.i195, align 4
  call void @clk_disable(ptr noundef %63) #9
  call void @clk_unprepare(ptr noundef %63) #9
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then98, %err_suspend.err_pm_disable_crit_edge, %img_i2s_in_runtime_resume.exit
  %ret.1 = phi i32 [ %ret.0, %err_suspend.err_pm_disable_crit_edge ], [ %ret.0, %if.then98 ], [ %retval.0.i.ph.i, %img_i2s_in_runtime_resume.exit ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end91.cleanup_crit_edge, %if.then19, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ -22, %do.end ], [ %call22, %if.then19 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_dev_remove(ptr noundef %pdev) #2 align 64 {
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
  %clk_sys.i = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 1
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_sys = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_i2s_in_dai_probe(ptr nocapture noundef %dai) #5 align 64 {
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
  %dma_data = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 2
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dma_data, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_i2s_in_disable(ptr nocapture noundef readonly %i2s) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2s, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2s, align 8
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %3) #9, !srcloc !72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_sys = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_sys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_sys, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %and = lshr i32 %fmt, 8
  %4 = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %4 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %6 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.lobit.not = icmp eq i8 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.img_i2s_in_set_fmt, i32 0, i32 %4
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep106 = getelementptr inbounds [5 x i32], ptr @switch.table.img_i2s_in_set_fmt.16, i32 0, i32 %4
  %8 = ptrtoint ptr %switch.gep106 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load107 = load i32, ptr %switch.gep106, align 4
  %and6 = and i32 %fmt, 15
  %9 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and6, label %switch.lookup.cleanup_crit_edge [
    i32 1, label %sw.bb7
    i32 3, label %switch.lookup.sw.epilog10_crit_edge
  ]

switch.lookup.sw.epilog10_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog10

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb7, %switch.lookup.sw.epilog10_crit_edge
  %chan_control_set.0 = phi i32 [ 0, %switch.lookup.sw.epilog10_crit_edge ], [ 256, %sw.bb7 ]
  %and11 = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and11)
  %cond = icmp eq i32 %and11, 4096
  br i1 %cond, label %sw.epilog13, label %sw.epilog10.cleanup_crit_edge

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog13:                                      ; preds = %sw.epilog10
  %dev = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog13
  %active_channels = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16100.not = icmp eq i32 %13, 0
  br i1 %cmp16100.not, label %for.cond.preheader.for.cond17.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond17.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond17.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channel_base.i.i = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 5
  br label %for.body

if.then:                                          ; preds = %sw.epilog13
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !66
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !67
  br label %cleanup

for.cond17.preheader:                             ; preds = %for.body.for.cond17.preheader_crit_edge, %for.cond.preheader.for.cond17.preheader_crit_edge
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_i2s_chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18102.not = icmp eq i32 %18, 0
  br i1 %cmp18102.not, label %for.cond17.preheader.for.cond30.preheader_crit_edge, label %for.body19.lr.ph

for.cond17.preheader.for.cond30.preheader_crit_edge: ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond30.preheader

for.body19.lr.ph:                                 ; preds = %for.cond17.preheader
  %channel_base.i = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 5
  br label %for.body19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel_base.i.i, align 4
  %mul.i.i = shl i32 %i.0101, 5
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %22 = and i32 %21, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %24, i32 4
  %add.ptr1.i7.i = getelementptr i8, ptr %add.ptr.i6.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %22) #9, !srcloc !72
  %inc = add nuw i32 %i.0101, 1
  %25 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active_channels, align 8
  %cmp16 = icmp ult i32 %inc, %26
  br i1 %cmp16, label %for.body.for.body_crit_edge, label %for.body.for.cond17.preheader_crit_edge

for.body.for.cond17.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond17.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond30.preheader:                             ; preds = %for.body19.for.cond30.preheader_crit_edge, %for.cond17.preheader.for.cond30.preheader_crit_edge
  %27 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp32104.not = icmp eq i32 %28, 0
  br i1 %cmp32104.not, label %for.cond30.preheader.for.end36_crit_edge, label %for.body33.lr.ph

for.cond30.preheader.for.end36_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

for.body33.lr.ph:                                 ; preds = %for.cond30.preheader
  %channel_base.i.i93 = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 5
  br label %for.body33

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.body19.lr.ph
  %i.1103 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc28, %for.body19.for.body19_crit_edge ]
  %29 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel_base.i, align 4
  %mul.i = shl i32 %i.1103, 5
  %add.ptr.i = getelementptr i8, ptr %30, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %32 = and i32 %31, -65537
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %or22 = or i32 %33, %chan_control_set.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %or22) #9
  %35 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %channel_base.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %36, i32 4
  %add.ptr1.i84 = getelementptr i8, ptr %add.ptr.i83, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i84, i32 %34) #9, !srcloc !72
  %and23 = and i32 %or22, -129
  %or24 = or i32 %and23, %switch.load107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %or24) #9
  %38 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel_base.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %39, i32 4
  %add.ptr1.i88 = getelementptr i8, ptr %add.ptr.i87, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i88, i32 %37) #9, !srcloc !72
  %and25 = and i32 %or24, -9
  %or26 = or i32 %and25, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %or26) #9
  %41 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channel_base.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %42, i32 4
  %add.ptr1.i92 = getelementptr i8, ptr %add.ptr.i91, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i92, i32 %40) #9, !srcloc !72
  %inc28 = add nuw i32 %i.1103, 1
  %43 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_i2s_chan, align 8
  %cmp18 = icmp ult i32 %inc28, %44
  br i1 %cmp18, label %for.body19.for.body19_crit_edge, label %for.body19.for.cond30.preheader_crit_edge

for.body19.for.cond30.preheader_crit_edge:        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond30.preheader

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.lr.ph
  %i.2105 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc35, %for.body33.for.body33_crit_edge ]
  %45 = ptrtoint ptr %channel_base.i.i93 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %channel_base.i.i93, align 4
  %mul.i.i94 = shl i32 %i.2105, 5
  %add.ptr.i.i95 = getelementptr i8, ptr %46, i32 4
  %add.ptr1.i.i96 = getelementptr i8, ptr %add.ptr.i.i95, i32 %mul.i.i94
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i96) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %48 = or i32 %47, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %channel_base.i.i93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %channel_base.i.i93, align 4
  %add.ptr.i6.i97 = getelementptr i8, ptr %50, i32 4
  %add.ptr1.i7.i98 = getelementptr i8, ptr %add.ptr.i6.i97, i32 %mul.i.i94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i98, i32 %48) #9, !srcloc !72
  %inc35 = add nuw i32 %i.2105, 1
  %51 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %active_channels, align 8
  %cmp32 = icmp ult i32 %inc35, %52
  br i1 %cmp32, label %for.body33.for.body33_crit_edge, label %for.body33.for.end36_crit_edge

for.body33.for.end36_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.end36:                                        ; preds = %for.body33.for.end36_crit_edge, %for.cond30.preheader.for.end36_crit_edge
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %call.i99 = tail call i32 @__pm_runtime_idle(ptr noundef %54, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end36, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %sw.epilog10.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end36 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %sw.epilog10.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i105 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i105, align 4
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
  %arrayidx.i.i106 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i106, align 4
  %div104 = lshr i32 %12, 1
  %13 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 10, label %params_format.exit.sw.epilog_crit_edge
    i32 6, label %sw.bb6
    i32 2, label %sw.bb9
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb6:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb6, %params_format.exit.sw.epilog_crit_edge
  %frame_size.0 = phi i32 [ 32, %sw.bb9 ], [ 64, %sw.bb6 ], [ 64, %params_format.exit.sw.epilog_crit_edge ]
  %control_set.0 = phi i32 [ 2, %sw.bb9 ], [ 0, %sw.bb6 ], [ 0, %params_format.exit.sw.epilog_crit_edge ]
  %chan_control_set.0 = phi i32 [ 4096, %sw.bb9 ], [ 6, %sw.bb6 ], [ 518, %params_format.exit.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp ult i32 %12, 2
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_i2s_chan, align 8
  %mul = shl i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul)
  %cmp12 = icmp ule i32 %12, %mul
  %rem = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %tobool.not, %cmp12
  br i1 %or.cond, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = shl i32 %div104, 2
  %shl = add i32 %sub, -4
  %or14 = or i32 %control_set.0, %shl
  %mul.i = mul i32 %frame_size.0, %5
  %clk_sys.i = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_sys.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %17) #9
  %mul1.i = shl i32 %mul.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul1.i)
  %cmp.not.i = icmp ult i32 %call.i, %mul1.i
  br i1 %cmp.not.i, label %if.else.i, label %.thread148

.thread148:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or21137150 = or i32 %chan_control_set.0, 16384
  br label %.thread

if.else.i:                                        ; preds = %if.end
  %mul2.i = mul i32 %mul.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul2.i)
  %cmp3.not.i = icmp ult i32 %call.i, %mul2.i
  br i1 %cmp3.not.i, label %if.else5.i, label %20

if.else5.i:                                       ; preds = %if.else.i
  %mul6.i = mul i32 %mul.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul6.i)
  %cmp7.not.i = icmp ult i32 %call.i, %mul6.i
  br i1 %cmp7.not.i, label %img_i2s_in_check_rate.exit, label %if.else5.i..thread_crit_edge

if.else5.i..thread_crit_edge:                     ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread

img_i2s_in_check_rate.exit:                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i107 = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %dev.i107 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i107, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef %call.i, i32 noundef %5) #12
  br label %cleanup

20:                                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %or25 = or i32 %chan_control_set.0, 24576
  br label %.thread

.thread:                                          ; preds = %20, %if.else5.i..thread_crit_edge, %.thread148
  %21 = phi i32 [ %or25, %20 ], [ %or21137150, %.thread148 ], [ %chan_control_set.0, %if.else5.i..thread_crit_edge ]
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !69
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %and = and i32 %25, 1
  %or28 = or i32 %and, %or14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or28) #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %add.ptr.i108 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %26) #9, !srcloc !72
  %active_channels = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %active_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp29139.not = icmp eq i32 %30, 0
  br i1 %cmp29139.not, label %.thread.for.cond30.preheader_crit_edge, label %for.body.lr.ph

.thread.for.cond30.preheader_crit_edge:           ; preds = %.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond30.preheader

for.body.lr.ph:                                   ; preds = %.thread
  %channel_base.i.i = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 5
  br label %for.body

for.cond30.preheader:                             ; preds = %for.body.for.cond30.preheader_crit_edge, %.thread.for.cond30.preheader_crit_edge
  %31 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_i2s_chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp32141.not = icmp eq i32 %32, 0
  br i1 %cmp32141.not, label %for.cond30.preheader.for.body.lr.ph.i_crit_edge, label %for.body33.lr.ph

for.cond30.preheader.for.body.lr.ph.i_crit_edge:  ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

for.body33.lr.ph:                                 ; preds = %for.cond30.preheader
  %channel_base.i = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 5
  br label %for.body33

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %33 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel_base.i.i, align 4
  %mul.i.i = shl i32 %i.0140, 5
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %36 = and i32 %35, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %channel_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %38, i32 4
  %add.ptr1.i7.i = getelementptr i8, ptr %add.ptr.i6.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %36) #9, !srcloc !72
  %inc = add nuw i32 %i.0140, 1
  %39 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %active_channels, align 8
  %cmp29 = icmp ult i32 %inc, %40
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.for.cond30.preheader_crit_edge

for.body.for.cond30.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond30.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.lr.ph
  %i.1142 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc39, %for.body33.for.body33_crit_edge ]
  %41 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channel_base.i, align 4
  %mul.i109 = shl i32 %i.1142, 5
  %add.ptr.i110 = getelementptr i8, ptr %42, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i110, i32 %mul.i109
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %44 = and i32 %43, -108134401
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %or37 = or i32 %45, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %or37) #9
  %47 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channel_base.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %48, i32 4
  %add.ptr1.i114 = getelementptr i8, ptr %add.ptr.i113, i32 %mul.i109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i114, i32 %46) #9, !srcloc !72
  %inc39 = add nuw i32 %i.1142, 1
  %49 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_i2s_chan, align 8
  %cmp32 = icmp ult i32 %inc39, %50
  br i1 %cmp32, label %for.body33.for.body33_crit_edge, label %for.body33.for.body.lr.ph.i_crit_edge

for.body33.for.body.lr.ph.i_crit_edge:            ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.body.lr.ph.i:                                 ; preds = %for.body33.for.body.lr.ph.i_crit_edge, %for.cond30.preheader.for.body.lr.ph.i_crit_edge
  %51 = ptrtoint ptr %active_channels to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div104, ptr %active_channels, align 8
  %channel_base.i.i115 = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %channel_base.i.i115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channel_base.i.i115, align 4
  %mul.i.i116 = shl i32 %i.020.i, 5
  %add.ptr.i.i117 = getelementptr i8, ptr %53, i32 4
  %add.ptr1.i.i118 = getelementptr i8, ptr %add.ptr.i.i117, i32 %mul.i.i116
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i118) #9, !srcloc !69
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %or.i = or i32 %55, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %57 = ptrtoint ptr %channel_base.i.i115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %channel_base.i.i115, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %58, i32 4
  %add.ptr1.i14.i = getelementptr i8, ptr %add.ptr.i13.i, i32 %mul.i.i116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i14.i, i32 %56) #9, !srcloc !72
  %and.i = and i32 %55, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %59 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %60 = ptrtoint ptr %channel_base.i.i115 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %channel_base.i.i115, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %61, i32 4
  %add.ptr1.i18.i = getelementptr i8, ptr %add.ptr.i17.i, i32 %mul.i.i116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i18.i, i32 %59) #9, !srcloc !72
  %inc.i = add nuw i32 %i.020.i, 1
  %62 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %active_channels, align 8
  %cmp.i = icmp ult i32 %inc.i, %63
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %img_i2s_in_flush.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

img_i2s_in_flush.exit:                            ; preds = %for.body.i
  %64 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %active_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp44143.not = icmp eq i32 %65, 0
  br i1 %cmp44143.not, label %img_i2s_in_flush.exit.cleanup_crit_edge, label %for.body45.lr.ph

img_i2s_in_flush.exit.cleanup_crit_edge:          ; preds = %img_i2s_in_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body45.lr.ph:                                 ; preds = %img_i2s_in_flush.exit
  %channel_base.i.i119 = getelementptr inbounds %struct.img_i2s_in, ptr %3, i32 0, i32 5
  br label %for.body45

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body45.lr.ph
  %i.2144 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc47, %for.body45.for.body45_crit_edge ]
  %66 = ptrtoint ptr %channel_base.i.i119 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %channel_base.i.i119, align 4
  %mul.i.i120 = shl i32 %i.2144, 5
  %add.ptr.i.i121 = getelementptr i8, ptr %67, i32 4
  %add.ptr1.i.i122 = getelementptr i8, ptr %add.ptr.i.i121, i32 %mul.i.i120
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i122) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %69 = or i32 %68, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %channel_base.i.i119 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %channel_base.i.i119, align 4
  %add.ptr.i6.i123 = getelementptr i8, ptr %71, i32 4
  %add.ptr1.i7.i124 = getelementptr i8, ptr %add.ptr.i6.i123, i32 %mul.i.i120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i124, i32 %69) #9, !srcloc !72
  %inc47 = add nuw i32 %i.2144, 1
  %72 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %active_channels, align 8
  %cmp44 = icmp ult i32 %inc47, %73
  br i1 %cmp44, label %for.body45.for.body45_crit_edge, label %for.body45.cleanup_crit_edge

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

cleanup:                                          ; preds = %for.body45.cleanup_crit_edge, %img_i2s_in_flush.exit.cleanup_crit_edge, %img_i2s_in_check_rate.exit, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %img_i2s_in_check_rate.exit ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ 0, %img_i2s_in_flush.exit.cleanup_crit_edge ], [ 0, %for.body45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge5
    i32 4, label %entry.sw.bb_crit_edge6
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge7
    i32 3, label %entry.sw.bb1_crit_edge8
  ]

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %8) #9, !srcloc !72
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge7, %entry.sw.bb1_crit_edge8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %add.ptr.i.i3 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %14 = and i32 %13, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %add.ptr.i3.i4 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i4, i32 %14) #9, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_dma_prepare_slave_config(ptr noundef %st, ptr noundef %params, ptr noundef %sc) #2 align 64 {
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
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %sc, i32 0, i32 1
  %13 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %src_addr, align 4
  %addr_width = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 1
  %14 = ptrtoint ptr %addr_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr_width, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %sc, i32 0, i32 3
  %16 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %src_addr_width, align 4
  %17 = shl i32 %1, 1
  %mul = and i32 %17, -4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %sc, i32 0, i32 5
  %18 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %src_maxburst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_suspend(ptr noundef %dev) #2 align 64 {
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
  %clk_sys.i = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_sys.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.img_i2s_in_runtime_resume.exit_crit_edge

if.then.img_i2s_in_runtime_resume.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_i2s_in_runtime_resume.exit

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
  br label %img_i2s_in_runtime_resume.exit

img_i2s_in_runtime_resume.exit:                   ; preds = %if.then3.i.i, %if.then.img_i2s_in_runtime_resume.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then.img_i2s_in_runtime_resume.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_i2s_chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp27.not = icmp eq i32 %7, 0
  br i1 %cmp27.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %channel_base.i = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 5
  %suspend_ch_ctl = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel_base.i, align 4
  %mul.i = shl i32 %i.028, 5
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !69
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %12 = ptrtoint ptr %suspend_ch_ctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %suspend_ch_ctl, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %i.028
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.028, 1
  %15 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_i2s_chan, align 8
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #9, !srcloc !69
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %suspend_ctl = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %suspend_ctl to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %suspend_ctl, align 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i, align 4
  %clk_sys.i24 = getelementptr inbounds %struct.img_i2s_in, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %clk_sys.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_sys.i24, align 4
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %img_i2s_in_runtime_resume.exit
  %retval.0 = phi i32 [ 0, %for.end ], [ %retval.0.i.ph.i, %img_i2s_in_runtime_resume.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2s_in_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_sys.i = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_sys.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_sys.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.img_i2s_in_runtime_resume.exit.thread_crit_edge

entry.img_i2s_in_runtime_resume.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_i2s_in_runtime_resume.exit.thread

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.cond.preheader, label %if.then3.i.i

for.cond.preheader:                               ; preds = %if.end.i.i
  %max_i2s_chan = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_i2s_chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25.not = icmp eq i32 %5, 0
  br i1 %cmp25.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %suspend_ch_ctl = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 9
  %channel_base.i = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 5
  br label %for.body

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %img_i2s_in_runtime_resume.exit.thread

img_i2s_in_runtime_resume.exit.thread:            ; preds = %if.then3.i.i, %entry.img_i2s_in_runtime_resume.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.img_i2s_in_runtime_resume.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %suspend_ch_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend_ch_ctl, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.026
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %11 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel_base.i, align 4
  %mul.i = shl i32 %i.026, 5
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %10) #9, !srcloc !72
  %inc = add nuw i32 %i.026, 1
  %13 = ptrtoint ptr %max_i2s_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_i2s_chan, align 8
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %suspend_ctl = getelementptr inbounds %struct.img_i2s_in, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %suspend_ctl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %suspend_ctl, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr.i20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %17) #9, !srcloc !72
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %20 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  br i1 %cmp.i, label %if.then3, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i, align 4
  %clk_sys.i22 = getelementptr inbounds %struct.img_i2s_in, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %clk_sys.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_sys.i22, align 4
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %for.end.cleanup_crit_edge, %img_i2s_in_runtime_resume.exit.thread
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.i.ph.i, %img_i2s_in_runtime_resume.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_img_i2s_in__242_615_img_i2s_in_driver_init6, !1, !"__initcall__kmod_img_i2s_in__242_615_img_i2s_in_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/img/img-i2s-in.c", i32 615, i32 1}
!2 = !{ptr @__exitcall_img_i2s_in_driver_exit, !1, !"__exitcall_img_i2s_in_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../sound/soc/img/img-i2s-in.c", i32 617, i32 1}
!5 = !{ptr @__UNIQUE_ID_description244, !6, !"__UNIQUE_ID_description244", i1 false, i1 false}
!6 = !{!"../sound/soc/img/img-i2s-in.c", i32 618, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../sound/soc/img/img-i2s-in.c", i32 619, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/img/img-i2s-in.c", i32 608, i32 11}
!12 = !{ptr @img_i2s_in_driver, !13, !"img_i2s_in_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/img/img-i2s-in.c", i32 606, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/img/img-i2s-in.c", i32 443, i32 46}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/img/img-i2s-in.c", i32 445, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @img_i2s_in_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @img_i2s_in_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/img/img-i2s-in.c", i32 453, i32 35}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/img/img-i2s-in.c", i32 456, i32 10}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/img/img-i2s-in.c", i32 480, i32 46}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/img/img-i2s-in.c", i32 488, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @img_i2s_in_probe.__UNIQUE_ID_ddebug241, !31, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/img/img-i2s-in.c", i32 81, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @img_i2s_in_runtime_resume._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @img_i2s_in_runtime_resume._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @img_i2s_in_dai_ops, !40, !"img_i2s_in_dai_ops", i1 false, i1 false}
!40 = !{!"../sound/soc/img/img-i2s-in.c", i32 375, i32 37}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/img/img-i2s-in.c", i32 205, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @img_i2s_in_check_rate._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @img_i2s_in_check_rate._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @img_i2s_in_component, !47, !"img_i2s_in_component", i1 false, i1 false}
!47 = !{!"../sound/soc/img/img-i2s-in.c", i32 390, i32 46}
!48 = !{ptr @img_i2s_in_dma_config, !49, !"img_i2s_in_dma_config", i1 false, i1 false}
!49 = !{!"../sound/soc/img/img-i2s-in.c", i32 415, i32 46}
!50 = !{ptr @img_i2s_in_of_match, !51, !"img_i2s_in_of_match", i1 false, i1 false}
!51 = !{!"../sound/soc/img/img-i2s-in.c", i32 594, i32 34}
!52 = !{ptr @img_i2s_in_pm_ops, !53, !"img_i2s_in_pm_ops", i1 false, i1 false}
!53 = !{!"../sound/soc/img/img-i2s-in.c", i32 600, i32 32}
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
!65 = !{i64 2148253130}
!66 = !{i64 737953, i64 737978, i64 738000, i64 738016, i64 738028, i64 738048, i64 738072, i64 738088, i64 738100}
!67 = !{i64 2148253318}
!68 = !{i64 2148735526, i64 2148735531, i64 2148735544, i64 2148735588, i64 2148735622, i64 2148735643}
!69 = !{i64 6749474}
!70 = !{i64 2154998561}
!71 = !{i64 2154997611}
!72 = !{i64 6749056}
!73 = !{i64 2154996380}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2154997200}
