; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lima_ip_desc = type { ptr, ptr, [2 x i8], [2 x i32], ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon }
%union.anon = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lima_vm_page = type { ptr, i32 }

@lima_ip_desc = internal constant { [26 x %struct.lima_ip_desc], [248 x i8] } { [26 x %struct.lima_ip_desc] [%struct.lima_ip_desc { ptr @.str.26, ptr @.str.26, [2 x i8] zeroinitializer, [2 x i32] [i32 8192, i32 8192], ptr @lima_pmu_init, ptr @lima_pmu_fini, ptr @lima_pmu_resume, ptr @lima_pmu_suspend }, %struct.lima_ip_desc { ptr @.str.27, ptr @.str.27, [2 x i8] c"\01\01", [2 x i32] [i32 12288, i32 12288], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.28, ptr @.str.28, [2 x i8] c"\01\01", [2 x i32] [i32 16384, i32 16384], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.29, ptr @.str.29, [2 x i8] zeroinitializer, [2 x i32] [i32 20480, i32 20480], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.30, ptr @.str.30, [2 x i8] zeroinitializer, [2 x i32] [i32 24576, i32 24576], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.31, ptr @.str.31, [2 x i8] zeroinitializer, [2 x i32] [i32 28672, i32 28672], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.32, ptr @.str.32, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 114688], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.33, ptr @.str.33, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 118784], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.34, ptr @.str.34, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 122880], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.35, ptr @.str.35, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 126976], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.36, ptr @.str.36, [2 x i8] c"\01\01", [2 x i32] zeroinitializer, ptr @lima_gp_init, ptr @lima_gp_fini, ptr @lima_gp_resume, ptr @lima_gp_suspend }, %struct.lima_ip_desc { ptr @.str.37, ptr @.str.37, [2 x i8] c"\01\01", [2 x i32] [i32 32768, i32 32768], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.38, ptr @.str.38, [2 x i8] zeroinitializer, [2 x i32] [i32 40960, i32 40960], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.39, ptr @.str.39, [2 x i8] zeroinitializer, [2 x i32] [i32 49152, i32 49152], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.40, ptr @.str.40, [2 x i8] zeroinitializer, [2 x i32] [i32 57344, i32 57344], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.41, ptr @.str.41, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 163840], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.42, ptr @.str.42, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 172032], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.43, ptr @.str.43, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 180224], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.44, ptr @.str.44, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 188416], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.45, ptr null, [2 x i8] c"\01\01", [2 x i32] [i32 4096, i32 65536], ptr @lima_l2_cache_init, ptr @lima_l2_cache_fini, ptr @lima_l2_cache_resume, ptr @lima_l2_cache_suspend }, %struct.lima_ip_desc { ptr @.str.46, ptr null, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 4096], ptr @lima_l2_cache_init, ptr @lima_l2_cache_fini, ptr @lima_l2_cache_resume, ptr @lima_l2_cache_suspend }, %struct.lima_ip_desc { ptr @.str.47, ptr null, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 69632], ptr @lima_l2_cache_init, ptr @lima_l2_cache_fini, ptr @lima_l2_cache_resume, ptr @lima_l2_cache_suspend }, %struct.lima_ip_desc { ptr @.str.48, ptr null, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 81920], ptr @lima_dlbu_init, ptr @lima_dlbu_fini, ptr @lima_dlbu_resume, ptr @lima_dlbu_suspend }, %struct.lima_ip_desc { ptr @.str.49, ptr null, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 77824], ptr @lima_bcast_init, ptr @lima_bcast_fini, ptr @lima_bcast_resume, ptr @lima_bcast_suspend }, %struct.lima_ip_desc { ptr @.str.50, ptr @.str.51, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 90112], ptr @lima_pp_bcast_init, ptr @lima_pp_bcast_fini, ptr @lima_pp_bcast_resume, ptr @lima_pp_bcast_suspend }, %struct.lima_ip_desc { ptr @.str.52, ptr null, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 86016], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }], [248 x i8] zeroinitializer }, align 32
@lima_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 392, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail to ioremap iomem\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lima_device_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/lima/lima_device.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_device_init._entry_ptr = internal global ptr @lima_device_init._entry, section ".printk_index", align 4
@lima_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&ldev->error_task_list_lock\00", [36 x i8] zeroinitializer }, align 32
@lima_device_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 417, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bus rate = %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lima_device_init._entry_ptr.9 = internal global ptr @lima_device_init._entry.6, section ".printk_index", align 4
@lima_device_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 418, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mod rate = %lu\00", [17 x i8] zeroinitializer }, align 32
@lima_device_init._entry_ptr.12 = internal global ptr @lima_device_init._entry.10, section ".printk_index", align 4
@lima_device_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resume clk fail %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lima_device_resume\00", [45 x i8] zeroinitializer }, align 32
@lima_device_resume._entry_ptr = internal global ptr @lima_device_resume._entry, section ".printk_index", align 4
@lima_device_resume._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 481, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"resume regulator fail %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lima_device_resume._entry_ptr.17 = internal global ptr @lima_device_resume._entry.15, section ".printk_index", align 4
@lima_device_resume._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"resume ip %d fail\0A\00", [45 x i8] zeroinitializer }, align 32
@lima_device_resume._entry_ptr.20 = internal global ptr @lima_device_resume._entry.18, section ".printk_index", align 4
@lima_device_resume._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devfreq resume fail\0A\00", [43 x i8] zeroinitializer }, align 32
@lima_device_resume._entry_ptr.23 = internal global ptr @lima_device_resume._entry.21, section ".printk_index", align 4
@lima_device_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 523, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devfreq suspend fail\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lima_device_suspend\00", [44 x i8] zeroinitializer }, align 32
@lima_device_suspend._entry_ptr = internal global ptr @lima_device_suspend._entry, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pmu\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpmmu\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppmmu0\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppmmu1\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppmmu2\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppmmu3\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppmmu4\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppmmu5\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppmmu6\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ppmmu7\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"gp\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pp0\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pp1\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pp2\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pp3\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pp4\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pp5\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pp6\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pp7\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l2_cache0\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l2_cache1\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l2_cache2\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dlbu\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bcast\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pp_bcast\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pp\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppmmu_bcast\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@lima_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get bus clk failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lima_clk_init\00", [18 x i8] zeroinitializer }, align 32
@lima_clk_init._entry_ptr = internal global ptr @lima_clk_init._entry, section ".printk_index", align 4
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@lima_clk_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get core clk failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@lima_clk_init._entry_ptr.59 = internal global ptr @lima_clk_init._entry.57, section ".printk_index", align 4
@lima_clk_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.55, ptr @.str.2, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"get reset controller failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lima_clk_init._entry_ptr.62 = internal global ptr @lima_clk_init._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mali\00", [27 x i8] zeroinitializer }, align 32
@lima_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 196, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get regulator: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lima_regulator_init\00", [44 x i8] zeroinitializer }, align 32
@lima_regulator_init._entry_ptr = internal global ptr @lima_regulator_init._entry, section ".printk_index", align 4
@lima_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 101, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reset controller deassert failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lima_clk_enable\00", [16 x i8] zeroinitializer }, align 32
@lima_clk_enable._entry_ptr = internal global ptr @lima_clk_enable._entry, section ".printk_index", align 4
@lima_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lima_regulator_enable\00", [42 x i8] zeroinitializer }, align 32
@lima_regulator_enable._entry_ptr = internal global ptr @lima_regulator_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"lima_ip_desc\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 51, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 392, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 415, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 417, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 418, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 475, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 481, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 488, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 495, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 523, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 52, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 65, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 66, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 67, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 68, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 69, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 70, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 71, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 72, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 73, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 56, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 57, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 58, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 59, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 60, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 61, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 62, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 63, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 64, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 53, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 54, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 55, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 74, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 75, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 76, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 77, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 127, i32 40 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 131, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 136, i32 40 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 140, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 149, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 189, i32 57 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 196, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 100, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [38 x i8] c"../drivers/gpu/drm/lima/lima_device.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 172, i32 3 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @lima_clk_enable._entry, ptr @lima_clk_enable._entry_ptr, ptr @lima_clk_init._entry, ptr @lima_clk_init._entry.57, ptr @lima_clk_init._entry.60, ptr @lima_clk_init._entry_ptr, ptr @lima_clk_init._entry_ptr.59, ptr @lima_clk_init._entry_ptr.62, ptr @lima_device_init._entry, ptr @lima_device_init._entry.10, ptr @lima_device_init._entry.6, ptr @lima_device_init._entry_ptr, ptr @lima_device_init._entry_ptr.12, ptr @lima_device_init._entry_ptr.9, ptr @lima_device_resume._entry, ptr @lima_device_resume._entry.15, ptr @lima_device_resume._entry.18, ptr @lima_device_resume._entry.21, ptr @lima_device_resume._entry_ptr, ptr @lima_device_resume._entry_ptr.17, ptr @lima_device_resume._entry_ptr.20, ptr @lima_device_resume._entry_ptr.23, ptr @lima_device_suspend._entry, ptr @lima_device_suspend._entry_ptr, ptr @lima_regulator_enable._entry, ptr @lima_regulator_enable._entry_ptr, ptr @lima_regulator_init._entry, ptr @lima_regulator_init._entry_ptr, ptr @lima_ip_desc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lima_device_init.__key, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_ip_desc to i32), i32 936, i32 1184, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_resume._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_resume._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_resume._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_device_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_clk_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_clk_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @lima_ip_name(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [26 x %struct.lima_ip_desc], ptr @lima_ip_desc, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_device_init(ptr noundef %ldev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef 4294967295) #5
  %2 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ldev, align 8
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

entry.dma_set_max_seg_size.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %entry.dma_set_max_seg_size.exit_crit_edge
  %7 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ldev, align 8
  %call.i = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.53) #5
  %clk_bus.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 7
  %9 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %clk_bus.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i120, label %if.end9.i

if.then.i120:                                     ; preds = %dma_set_max_seg_size.exit
  %10 = ptrtoint ptr %call.i to i32
  %cmp.not.i = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i120.if.end.i_crit_edge, label %do.end.i

if.then.i120.if.end.i_crit_edge:                  ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ldev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.54, i32 noundef %10) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i120.if.end.i_crit_edge
  %13 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %clk_bus.i, align 4
  br label %lima_clk_init.exit

if.end9.i:                                        ; preds = %dma_set_max_seg_size.exit
  %14 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ldev, align 8
  %call11.i = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.56) #5
  %clk_gpu.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 8
  %16 = ptrtoint ptr %clk_gpu.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11.i, ptr %clk_gpu.i, align 8
  %cmp.i69.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.then14.i, label %if.end25.i

if.then14.i:                                      ; preds = %if.end9.i
  %17 = ptrtoint ptr %call11.i to i32
  %cmp17.not.i = icmp eq ptr %call11.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp17.not.i, label %if.then14.i.if.end23.i_crit_edge, label %do.end21.i

if.then14.i.if.end23.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

do.end21.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ldev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.58, i32 noundef %17) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end21.i, %if.then14.i.if.end23.i_crit_edge
  %20 = ptrtoint ptr %clk_gpu.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %clk_gpu.i, align 8
  br label %lima_clk_init.exit

if.end25.i:                                       ; preds = %if.end9.i
  %21 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ldev, align 8
  %call.i.i = tail call ptr @devm_reset_control_array_get(ptr noundef %22, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %reset.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 9
  %23 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i, ptr %reset.i, align 4
  %cmp.i70.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70.i, label %if.then30.i, label %if.end41.i

if.then30.i:                                      ; preds = %if.end25.i
  %24 = ptrtoint ptr %call.i.i to i32
  %cmp33.not.i = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp33.not.i, label %if.then30.i.if.end39.i_crit_edge, label %do.end37.i

if.then30.i.if.end39.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

do.end37.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ldev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.61, i32 noundef %24) #8
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end37.i, %if.then30.i.if.end39.i_crit_edge
  %27 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %reset.i, align 4
  br label %lima_clk_init.exit

if.end41.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %call42.i = tail call fastcc i32 @lima_clk_enable(ptr noundef %ldev) #5
  br label %lima_clk_init.exit

lima_clk_init.exit:                               ; preds = %if.end41.i, %if.end39.i, %if.end23.i, %if.end.i
  %retval.0.i = phi i32 [ %10, %if.end.i ], [ %17, %if.end23.i ], [ %24, %if.end39.i ], [ %call42.i, %if.end41.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %lima_clk_init.exit.cleanup_crit_edge

lima_clk_init.exit.cleanup_crit_edge:             ; preds = %lima_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lima_clk_init.exit
  %28 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ldev, align 8
  %call.i121 = tail call ptr @devm_regulator_get_optional(ptr noundef %29, ptr noundef nonnull @.str.63) #5
  %regulator.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 10
  %30 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i121, ptr %regulator.i, align 8
  %cmp.i.i122 = icmp ugt ptr %call.i121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i122, label %if.then.i123, label %if.end12.i

if.then.i123:                                     ; preds = %if.end
  %31 = ptrtoint ptr %call.i121 to i32
  %32 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %regulator.i, align 8
  %33 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %lima_regulator_init.exit [
    i32 -19, label %if.then.i123.if.end8_crit_edge
    i32 -517, label %if.then.i123.err_out0_crit_edge
  ]

if.then.i123.err_out0_crit_edge:                  ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out0

if.then.i123.if.end8_crit_edge:                   ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end12.i:                                       ; preds = %if.end
  %tobool.not.i.i = icmp eq ptr %call.i121, null
  br i1 %tobool.not.i.i, label %if.end12.i.if.end8_crit_edge, label %if.end.i.i

if.end12.i.if.end8_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end.i.i:                                       ; preds = %if.end12.i
  %call.i.i125 = tail call i32 @regulator_enable(ptr noundef nonnull %call.i121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %cmp.i23.i = icmp slt i32 %call.i.i125, 0
  br i1 %cmp.i23.i, label %lima_regulator_init.exit.thread157, label %if.end.i.i.if.end8_crit_edge

if.end.i.i.if.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

lima_regulator_init.exit.thread157:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ldev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.68, i32 noundef %call.i.i125) #8
  br label %err_out0

lima_regulator_init.exit:                         ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ldev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.64, i32 noundef %31) #8
  br label %err_out0

if.end8:                                          ; preds = %if.end.i.i.if.end8_crit_edge, %if.end12.i.if.end8_crit_edge, %if.then.i123.if.end8_crit_edge
  %call9 = tail call ptr @lima_vm_create(ptr noundef %ldev) #5
  %empty_vm = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 13
  %38 = ptrtoint ptr %empty_vm to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9, ptr %empty_vm, align 8
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.err_out1_crit_edge, label %if.end13

if.end8.err_out1_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out1

if.end13:                                         ; preds = %if.end8
  %va_start = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 14
  %39 = ptrtoint ptr %va_start to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %va_start, align 8
  %id = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 2
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp = icmp eq i32 %41, 1
  %va_end = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 15
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end13
  %42 = ptrtoint ptr %va_end to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 4293918720, ptr %va_end, align 8
  %43 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ldev, align 8
  %dlbu_dma = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 17
  %call.i127 = tail call ptr @dma_alloc_attrs(ptr noundef %44, i32 noundef 4096, ptr noundef %dlbu_dma, i32 noundef 11456, i32 noundef 260) #5
  %dlbu_cpu = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 16
  %45 = ptrtoint ptr %dlbu_cpu to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i127, ptr %dlbu_cpu, align 8
  %tobool18.not = icmp eq ptr %call.i127, null
  br i1 %tobool18.not, label %if.then14.err_out2_crit_edge, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then14.err_out2_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out2

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %va_end to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 4294967296, ptr %va_end, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14.if.end22_crit_edge
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #5
  %iomem = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 6
  %47 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call23, ptr %iomem, align 8
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end22
  %ip3.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 11
  br label %for.body

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ldev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str) #8
  %50 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem, align 8
  %52 = ptrtoint ptr %51 to i32
  br label %err_out3

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0168 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %53 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ldev, align 8
  %add.ptr.i = getelementptr i8, ptr %54, i32 -16
  %add.ptr4.i = getelementptr %struct.lima_ip, ptr %ip3.i, i32 %i.0168
  %irq_name5.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %i.0168, i32 1
  %55 = ptrtoint ptr %irq_name5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %irq_name5.i, align 4
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 8
  %arrayidx.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %i.0168, i32 3, i32 %58
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %arrayidx8.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %i.0168, i32 2, i32 %58
  %61 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx8.i, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i128 = icmp eq i8 %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i129 = icmp slt i32 %60, 0
  br i1 %cmp.i129, label %for.body.for.inc_crit_edge, label %if.end.i130

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i130:                                      ; preds = %for.body
  %63 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ldev, ptr %add.ptr4.i, align 4
  %id10.i = getelementptr %struct.lima_ip, ptr %ip3.i, i32 %i.0168, i32 1
  %64 = ptrtoint ptr %id10.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.0168, ptr %id10.i, align 4
  %65 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iomem, align 8
  %add.ptr11.i = getelementptr i8, ptr %66, i32 %60
  %iomem12.i = getelementptr %struct.lima_ip, ptr %ip3.i, i32 %i.0168, i32 3
  %67 = ptrtoint ptr %iomem12.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr11.i, ptr %iomem12.i, align 4
  %tobool13.not.i = icmp eq ptr %56, null
  br i1 %tobool13.not.i, label %if.end.i130.if.end20.i_crit_edge, label %if.then14.i131

if.end.i130.if.end20.i_crit_edge:                 ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then14.i131:                                   ; preds = %if.end.i130
  br i1 %tobool.not.i128, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then14.i131
  call void @__sanitizer_cov_trace_pc() #7
  %call.i132 = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i, ptr noundef nonnull %56) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then14.i131
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr.i, ptr noundef nonnull %56) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i132, %cond.true.i ], [ %call16.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp17.i = icmp slt i32 %cond.i, 0
  br i1 %cmp17.i, label %cond.end.i.out.i_crit_edge, label %if.end19.i

cond.end.i.out.i_crit_edge:                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.end19.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq.i = getelementptr %struct.lima_ip, ptr %ip3.i, i32 %i.0168, i32 4
  %68 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %cond.i, ptr %irq.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end19.i, %if.end.i130.if.end20.i_crit_edge
  %init.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %i.0168, i32 4
  %69 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init.i, align 4
  %call21.i = tail call i32 %70(ptr noundef %add.ptr4.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end20.i.out.i_crit_edge

if.end20.i.out.i_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %present.i = getelementptr %struct.lima_ip, ptr %ip3.i, i32 %i.0168, i32 2
  %71 = ptrtoint ptr %present.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %present.i, align 4
  br label %for.inc

out.i:                                            ; preds = %if.end20.i.out.i_crit_edge, %cond.end.i.out.i_crit_edge
  %err.0.i = phi i32 [ %cond.i, %cond.end.i.out.i_crit_edge ], [ %call21.i, %if.end20.i.out.i_crit_edge ]
  br i1 %tobool.not.i128, label %out.i.for.inc_crit_edge, label %err_out4

out.i.for.inc_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %out.i.for.inc_crit_edge, %if.then23.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %pipe1.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 12
  %ldev.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 12, i32 0, i32 4
  %72 = ptrtoint ptr %ldev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ldev, ptr %ldev.i, align 8
  %call.i134 = tail call i32 @lima_sched_pipe_init(ptr noundef %pipe1.i, ptr noundef nonnull @.str.36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %if.end.i139, label %for.end.while.body.lr.ph_crit_edge

for.end.while.body.lr.ph_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph

if.end.i139:                                      ; preds = %for.end
  %add.ptr3.i = getelementptr %struct.lima_device, ptr %ldev, i32 0, i32 11, i32 19
  %num_l2_cache.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 12, i32 0, i32 10
  %73 = ptrtoint ptr %num_l2_cache.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_l2_cache.i, align 8
  %inc.i = add i32 %74, 1
  store i32 %inc.i, ptr %num_l2_cache.i, align 8
  %arrayidx.i136 = getelementptr %struct.lima_device, ptr %ldev, i32 0, i32 12, i32 0, i32 9, i32 %74
  %75 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr3.i, ptr %arrayidx.i136, align 4
  %add.ptr6.i = getelementptr %struct.lima_device, ptr %ldev, i32 0, i32 11, i32 1
  %num_mmu.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 12, i32 0, i32 8
  %76 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_mmu.i, align 4
  %inc7.i = add i32 %77, 1
  store i32 %inc7.i, ptr %num_mmu.i, align 4
  %arrayidx8.i137 = getelementptr %struct.lima_device, ptr %ldev, i32 0, i32 12, i32 0, i32 7, i32 %77
  %78 = ptrtoint ptr %arrayidx8.i137 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr6.i, ptr %arrayidx8.i137, align 4
  %add.ptr11.i138 = getelementptr %struct.lima_device, ptr %ldev, i32 0, i32 11, i32 10
  %num_processor.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 12, i32 0, i32 12
  %79 = ptrtoint ptr %num_processor.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_processor.i, align 4
  %inc12.i = add i32 %80, 1
  store i32 %inc12.i, ptr %num_processor.i, align 4
  %arrayidx13.i = getelementptr %struct.lima_device, ptr %ldev, i32 0, i32 12, i32 0, i32 11, i32 %80
  %81 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr11.i138, ptr %arrayidx13.i, align 4
  %call14.i = tail call i32 @lima_gp_pipe_init(ptr noundef %ldev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end39, label %if.end.i139.while.body.lr.ph.sink.split_crit_edge

if.end.i139.while.body.lr.ph.sink.split_crit_edge: ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.sink.split

if.end39:                                         ; preds = %if.end.i139
  %call40 = tail call fastcc i32 @lima_init_pp_pipe(ptr noundef %ldev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %err_out5

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %dump = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 19
  %82 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1095584076, ptr %dump, align 8
  %version_major = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 19, i32 1
  %83 = ptrtoint ptr %version_major to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %version_major, align 4
  %version_minor = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 19, i32 2
  %84 = ptrtoint ptr %version_minor to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %version_minor, align 2
  %error_task_list = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 20
  %85 = ptrtoint ptr %error_task_list to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %error_task_list, ptr %error_task_list, align 4
  %prev.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 20, i32 1
  %86 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %error_task_list, ptr %prev.i, align 4
  %error_task_list_lock = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %error_task_list_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @lima_device_init.__key) #5
  %87 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ldev, align 8
  %89 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %clk_bus.i, align 4
  %call53 = tail call i32 @clk_get_rate(ptr noundef %90) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.7, i32 noundef %call53) #8
  %91 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ldev, align 8
  %clk_gpu = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 8
  %93 = ptrtoint ptr %clk_gpu to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk_gpu, align 8
  %call58 = tail call i32 @clk_get_rate(ptr noundef %94) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.11, i32 noundef %call58) #8
  br label %cleanup

err_out5:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lima_gp_pipe_fini(ptr noundef %ldev) #5
  br label %while.body.lr.ph.sink.split

err_out4:                                         ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0168)
  %cmp59171.not = icmp eq i32 %i.0168, 0
  br i1 %cmp59171.not, label %err_out4.err_out3_crit_edge, label %err_out4.while.body.lr.ph_crit_edge

err_out4.while.body.lr.ph_crit_edge:              ; preds = %err_out4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph

err_out4.err_out3_crit_edge:                      ; preds = %err_out4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out3

while.body.lr.ph.sink.split:                      ; preds = %err_out5, %if.end.i139.while.body.lr.ph.sink.split_crit_edge
  %err.0178.ph = phi i32 [ %call40, %err_out5 ], [ %call14.i, %if.end.i139.while.body.lr.ph.sink.split_crit_edge ]
  tail call void @lima_sched_pipe_fini(ptr noundef %pipe1.i) #5
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.sink.split, %err_out4.while.body.lr.ph_crit_edge, %for.end.while.body.lr.ph_crit_edge
  %err.0178 = phi i32 [ %err.0.i, %err_out4.while.body.lr.ph_crit_edge ], [ %call.i134, %for.end.while.body.lr.ph_crit_edge ], [ %err.0178.ph, %while.body.lr.ph.sink.split ]
  %i.0167177 = phi i32 [ %i.0168, %err_out4.while.body.lr.ph_crit_edge ], [ 26, %for.end.while.body.lr.ph_crit_edge ], [ 26, %while.body.lr.ph.sink.split ]
  br label %while.body

while.body:                                       ; preds = %lima_fini_ip.exit.while.body_crit_edge, %while.body.lr.ph
  %dec172.in = phi i32 [ %i.0167177, %while.body.lr.ph ], [ %dec172, %lima_fini_ip.exit.while.body_crit_edge ]
  %dec172 = add nsw i32 %dec172.in, -1
  %present.i142 = getelementptr %struct.lima_ip, ptr %ip3.i, i32 %dec172, i32 2
  %95 = ptrtoint ptr %present.i142 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %present.i142, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i143 = icmp eq i8 %96, 0
  br i1 %tobool.not.i143, label %while.body.lima_fini_ip.exit_crit_edge, label %if.then.i144

while.body.lima_fini_ip.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_fini_ip.exit

if.then.i144:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr2.i = getelementptr %struct.lima_ip, ptr %ip3.i, i32 %dec172
  %fini.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %dec172, i32 5
  %97 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fini.i, align 4
  tail call void %98(ptr noundef %add.ptr2.i) #5
  br label %lima_fini_ip.exit

lima_fini_ip.exit:                                ; preds = %if.then.i144, %while.body.lima_fini_ip.exit_crit_edge
  %cmp59 = icmp sgt i32 %dec172.in, 1
  br i1 %cmp59, label %lima_fini_ip.exit.while.body_crit_edge, label %lima_fini_ip.exit.err_out3_crit_edge

lima_fini_ip.exit.err_out3_crit_edge:             ; preds = %lima_fini_ip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out3

lima_fini_ip.exit.while.body_crit_edge:           ; preds = %lima_fini_ip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

err_out3:                                         ; preds = %lima_fini_ip.exit.err_out3_crit_edge, %err_out4.err_out3_crit_edge, %do.end
  %err.1 = phi i32 [ %52, %do.end ], [ %err.0.i, %err_out4.err_out3_crit_edge ], [ %err.0178, %lima_fini_ip.exit.err_out3_crit_edge ]
  %dlbu_cpu60 = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 16
  %99 = ptrtoint ptr %dlbu_cpu60 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dlbu_cpu60, align 8
  %tobool61.not = icmp eq ptr %100, null
  br i1 %tobool61.not, label %err_out3.err_out2_crit_edge, label %if.then62

err_out3.err_out2_crit_edge:                      ; preds = %err_out3
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out2

if.then62:                                        ; preds = %err_out3
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ldev, align 8
  %dlbu_dma65 = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 17
  %103 = ptrtoint ptr %dlbu_dma65 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dlbu_dma65, align 4
  tail call void @dma_free_attrs(ptr noundef %102, i32 noundef 4096, ptr noundef nonnull %100, i32 noundef %104, i32 noundef 4) #5
  br label %err_out2

err_out2:                                         ; preds = %if.then62, %err_out3.err_out2_crit_edge, %if.then14.err_out2_crit_edge
  %err.2 = phi i32 [ %err.1, %if.then62 ], [ %err.1, %err_out3.err_out2_crit_edge ], [ -12, %if.then14.err_out2_crit_edge ]
  %105 = ptrtoint ptr %empty_vm to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %empty_vm, align 8
  %tobool.not.i146 = icmp eq ptr %106, null
  br i1 %tobool.not.i146, label %err_out2.err_out1_crit_edge, label %if.then.i147

err_out2.err_out1_crit_edge:                      ; preds = %err_out2
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out1

if.then.i147:                                     ; preds = %err_out2
  %refcount.i = getelementptr inbounds %struct.lima_vm, ptr %106, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !142
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err_out1_crit_edge, label %if.then10.i.i.i.i.i, !prof !143

if.end5.i.i.i.i.i.err_out1_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out1

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %err_out1

if.then.i.i:                                      ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @lima_vm_release(ptr noundef %refcount.i) #5
  br label %err_out1

err_out1:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err_out1_crit_edge, %err_out2.err_out1_crit_edge, %if.end8.err_out1_crit_edge
  %err.3 = phi i32 [ -12, %if.end8.err_out1_crit_edge ], [ %err.2, %err_out2.err_out1_crit_edge ], [ %err.2, %if.end5.i.i.i.i.i.err_out1_crit_edge ], [ %err.2, %if.then10.i.i.i.i.i ], [ %err.2, %if.then.i.i ]
  %108 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regulator.i, align 8
  %tobool.not.i.i149 = icmp eq ptr %109, null
  br i1 %tobool.not.i.i149, label %err_out1.err_out0_crit_edge, label %if.then.i.i151

err_out1.err_out0_crit_edge:                      ; preds = %err_out1
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out0

if.then.i.i151:                                   ; preds = %err_out1
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i150 = tail call i32 @regulator_disable(ptr noundef nonnull %109) #5
  br label %err_out0

err_out0:                                         ; preds = %if.then.i.i151, %err_out1.err_out0_crit_edge, %lima_regulator_init.exit, %lima_regulator_init.exit.thread157, %if.then.i123.err_out0_crit_edge
  %err.4 = phi i32 [ %31, %lima_regulator_init.exit ], [ %call.i.i125, %lima_regulator_init.exit.thread157 ], [ %err.3, %err_out1.err_out0_crit_edge ], [ %err.3, %if.then.i.i151 ], [ %31, %if.then.i123.err_out0_crit_edge ]
  %reset.i.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 9
  %110 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reset.i.i, align 4
  %tobool.not.i.i152 = icmp eq ptr %111, null
  br i1 %tobool.not.i.i152, label %err_out0.lima_clk_fini.exit_crit_edge, label %if.then.i.i154

err_out0.lima_clk_fini.exit_crit_edge:            ; preds = %err_out0
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_clk_fini.exit

if.then.i.i154:                                   ; preds = %err_out0
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i153 = tail call i32 @reset_control_assert(ptr noundef nonnull %111) #5
  br label %lima_clk_fini.exit

lima_clk_fini.exit:                               ; preds = %if.then.i.i154, %err_out0.lima_clk_fini.exit_crit_edge
  %clk_gpu.i.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 8
  %112 = ptrtoint ptr %clk_gpu.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk_gpu.i.i, align 8
  tail call void @clk_disable(ptr noundef %113) #5
  tail call void @clk_unprepare(ptr noundef %113) #5
  %114 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clk_bus.i, align 4
  tail call void @clk_disable(ptr noundef %115) #5
  tail call void @clk_unprepare(ptr noundef %115) #5
  br label %cleanup

cleanup:                                          ; preds = %lima_clk_fini.exit, %if.end43, %lima_clk_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %lima_clk_fini.exit ], [ 0, %if.end43 ], [ %retval.0.i, %lima_clk_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_vm_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lima_init_pp_pipe(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1
  %ldev = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 4
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %ldev, align 8
  %call = tail call i32 @lima_sched_pipe_init(ptr noundef %add.ptr, ptr noundef nonnull @.str.51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add.ptr3 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 11, i32 11
  %add.ptr7 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 11, i32 2
  %id = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 2
  %add.ptr13 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 11, i32 19
  %add.ptr16 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 11, i32 20
  %num_mmu = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 8
  %num_processor = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 12
  %num_l2_cache = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %for.cond.preheader
  %i.089 = phi i32 [ 0, %for.cond.preheader ], [ %inc38, %if.end37.for.body_crit_edge ]
  %add.ptr4 = getelementptr %struct.lima_ip, ptr %add.ptr3, i32 %i.089
  %add.ptr8 = getelementptr %struct.lima_ip, ptr %add.ptr7, i32 %i.089
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9 = icmp eq i32 %2, 0
  %3 = lshr i32 %i.089, 2
  %add.ptr17 = getelementptr %struct.lima_ip, ptr %add.ptr16, i32 %3
  %l2_cache.0 = select i1 %cmp9, ptr %add.ptr13, ptr %add.ptr17
  %present = getelementptr %struct.lima_ip, ptr %add.ptr3, i32 %i.089, i32 2
  %4 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %present, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool19.not = icmp eq i8 %5, 0
  br i1 %tobool19.not, label %for.body.if.end37_crit_edge, label %land.lhs.true

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true:                                    ; preds = %for.body
  %present20 = getelementptr %struct.lima_ip, ptr %add.ptr7, i32 %i.089, i32 2
  %6 = ptrtoint ptr %present20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present20, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool21.not = icmp eq i8 %7, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true22

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true22:                                  ; preds = %land.lhs.true
  %present23 = getelementptr inbounds %struct.lima_ip, ptr %l2_cache.0, i32 0, i32 2
  %8 = ptrtoint ptr %present23 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %present23, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool24.not = icmp eq i8 %9, 0
  br i1 %tobool24.not, label %land.lhs.true22.if.end37_crit_edge, label %if.then25

land.lhs.true22.if.end37_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then25:                                        ; preds = %land.lhs.true22
  %10 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mmu, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %num_mmu, align 4
  %arrayidx = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 7, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr8, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %num_processor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_processor, align 4
  %inc26 = add i32 %14, 1
  store i32 %inc26, ptr %num_processor, align 4
  %arrayidx27 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 11, i32 %14
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr4, ptr %arrayidx27, align 4
  %arrayidx30 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 9, i32 %3
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %17, null
  br i1 %tobool31.not, label %if.then32, label %if.then25.if.end37_crit_edge

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %num_l2_cache to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_l2_cache, align 8
  %inc34 = add i32 %19, 1
  store i32 %inc34, ptr %num_l2_cache, align 8
  %arrayidx35 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 9, i32 %19
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %l2_cache.0, ptr %arrayidx35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.then25.if.end37_crit_edge, %land.lhs.true22.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %for.body.if.end37_crit_edge
  %inc38 = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc38, 8
  br i1 %exitcond.not, label %for.end, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end37
  %present41 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 11, i32 23, i32 2
  %21 = ptrtoint ptr %present41 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %present41, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool42.not = icmp eq i8 %22, 0
  br i1 %tobool42.not, label %for.end.if.end50_crit_edge, label %if.then43

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr46 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 11, i32 24
  %bcast_processor = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 13
  %23 = ptrtoint ptr %bcast_processor to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr46, ptr %bcast_processor, align 8
  %add.ptr49 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 11, i32 25
  %bcast_mmu = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 14
  %24 = ptrtoint ptr %bcast_mmu to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr49, ptr %bcast_mmu, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %for.end.if.end50_crit_edge
  %call51 = tail call i32 @lima_pp_pipe_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %if.then53

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lima_sched_pipe_fini(ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end50.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.then53 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_device_fini(ptr noundef %ldev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %error_task_list = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 20
  %0 = ptrtoint ptr %error_task_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %error_task_list, align 8
  %cmp.not45 = icmp eq ptr %1, %error_task_list
  br i1 %cmp.not45, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %et.046 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %et.046 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %et.046, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %et.046) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %et.046, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %et.046 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %et.046, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %et.046 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %et.046, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %et.046, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kvfree(ptr noundef %et.046) #5
  %cmp.not = icmp eq ptr %tmp.0, %error_task_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %error_task_list_lock = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 21
  tail call void @mutex_destroy(ptr noundef %error_task_list_lock) #5
  %add.ptr.i = getelementptr %struct.lima_device, ptr %ldev, i32 0, i32 12, i32 1
  tail call void @lima_pp_pipe_fini(ptr noundef %ldev) #5
  tail call void @lima_sched_pipe_fini(ptr noundef %add.ptr.i) #5
  %pipe1.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 12
  tail call void @lima_gp_pipe_fini(ptr noundef %ldev) #5
  tail call void @lima_sched_pipe_fini(ptr noundef %pipe1.i) #5
  %ip1.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 11
  br label %for.body16

for.body16:                                       ; preds = %lima_fini_ip.exit.for.body16_crit_edge, %for.end
  %i.048 = phi i32 [ 25, %for.end ], [ %dec, %lima_fini_ip.exit.for.body16_crit_edge ]
  %present.i = getelementptr %struct.lima_ip, ptr %ip1.i, i32 %i.048, i32 2
  %11 = ptrtoint ptr %present.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %present.i, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %for.body16.lima_fini_ip.exit_crit_edge, label %if.then.i

for.body16.lima_fini_ip.exit_crit_edge:           ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_fini_ip.exit

if.then.i:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr2.i = getelementptr %struct.lima_ip, ptr %ip1.i, i32 %i.048
  %fini.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %i.048, i32 5
  %13 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fini.i, align 4
  tail call void %14(ptr noundef %add.ptr2.i) #5
  br label %lima_fini_ip.exit

lima_fini_ip.exit:                                ; preds = %if.then.i, %for.body16.lima_fini_ip.exit_crit_edge
  %dec = add nsw i32 %i.048, -1
  %cmp15.not = icmp eq i32 %i.048, 0
  br i1 %cmp15.not, label %for.end18, label %lima_fini_ip.exit.for.body16_crit_edge

lima_fini_ip.exit.for.body16_crit_edge:           ; preds = %lima_fini_ip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

for.end18:                                        ; preds = %lima_fini_ip.exit
  %dlbu_cpu = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 16
  %15 = ptrtoint ptr %dlbu_cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dlbu_cpu, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %for.end18.if.end_crit_edge, label %if.then

for.end18.if.end_crit_edge:                       ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ldev, align 8
  %dlbu_dma = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 17
  %19 = ptrtoint ptr %dlbu_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dlbu_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %18, i32 noundef 4096, ptr noundef nonnull %16, i32 noundef %20, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end18.if.end_crit_edge
  %empty_vm = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 13
  %21 = ptrtoint ptr %empty_vm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %empty_vm, align 8
  %tobool.not.i38 = icmp eq ptr %22, null
  br i1 %tobool.not.i38, label %if.end.lima_vm_put.exit_crit_edge, label %if.then.i39

if.end.lima_vm_put.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_put.exit

if.then.i39:                                      ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.lima_vm, ptr %22, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !142
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !143

if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %lima_vm_put.exit

if.then.i.i:                                      ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @lima_vm_release(ptr noundef %refcount.i) #5
  br label %lima_vm_put.exit

lima_vm_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge, %if.end.lima_vm_put.exit_crit_edge
  %regulator.i.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 10
  %24 = ptrtoint ptr %regulator.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regulator.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %lima_vm_put.exit.lima_regulator_fini.exit_crit_edge, label %if.then.i.i41

lima_vm_put.exit.lima_regulator_fini.exit_crit_edge: ; preds = %lima_vm_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_regulator_fini.exit

if.then.i.i41:                                    ; preds = %lima_vm_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i40 = tail call i32 @regulator_disable(ptr noundef nonnull %25) #5
  br label %lima_regulator_fini.exit

lima_regulator_fini.exit:                         ; preds = %if.then.i.i41, %lima_vm_put.exit.lima_regulator_fini.exit_crit_edge
  %reset.i.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 9
  %26 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset.i.i, align 4
  %tobool.not.i.i42 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i42, label %lima_regulator_fini.exit.lima_clk_fini.exit_crit_edge, label %if.then.i.i44

lima_regulator_fini.exit.lima_clk_fini.exit_crit_edge: ; preds = %lima_regulator_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_clk_fini.exit

if.then.i.i44:                                    ; preds = %lima_regulator_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i43 = tail call i32 @reset_control_assert(ptr noundef nonnull %27) #5
  br label %lima_clk_fini.exit

lima_clk_fini.exit:                               ; preds = %if.then.i.i44, %lima_regulator_fini.exit.lima_clk_fini.exit_crit_edge
  %clk_gpu.i.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 8
  %28 = ptrtoint ptr %clk_gpu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_gpu.i.i, align 8
  tail call void @clk_disable(ptr noundef %29) #5
  tail call void @clk_unprepare(ptr noundef %29) #5
  %clk_bus.i.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 7
  %30 = ptrtoint ptr %clk_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_bus.i.i, align 4
  tail call void @clk_disable(ptr noundef %31) #5
  tail call void @clk_unprepare(ptr noundef %31) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_device_resume(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @lima_clk_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regulator.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulator.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.lima_regulator_enable.exit_crit_edge, label %if.end.i

if.end.lima_regulator_enable.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_regulator_enable.exit

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @regulator_enable(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end7, label %if.end.i.lima_regulator_enable.exit_crit_edge

if.end.i.lima_regulator_enable.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_regulator_enable.exit

lima_regulator_enable.exit:                       ; preds = %if.end.i.lima_regulator_enable.exit_crit_edge, %if.end.lima_regulator_enable.exit_crit_edge
  %ip1.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 11
  br label %for.body

do.end7:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef %call.i) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i) #8
  br label %err_out0

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %lima_regulator_enable.exit
  %i.073 = phi i32 [ 0, %lima_regulator_enable.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %present.i = getelementptr %struct.lima_ip, ptr %ip1.i, i32 %i.073, i32 2
  %6 = ptrtoint ptr %present.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present.i, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i48 = icmp eq i8 %7, 0
  br i1 %tobool.not.i48, label %for.body.for.inc_crit_edge, label %lima_resume_ip.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lima_resume_ip.exit:                              ; preds = %for.body
  %add.ptr2.i = getelementptr %struct.lima_ip, ptr %ip1.i, i32 %i.073
  %resume.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %i.073, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %call.i49 = tail call i32 %9(ptr noundef %add.ptr2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool10.not = icmp eq i32 %call.i49, 0
  br i1 %tobool10.not, label %lima_resume_ip.exit.for.inc_crit_edge, label %err_out1

lima_resume_ip.exit.for.inc_crit_edge:            ; preds = %lima_resume_ip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %lima_resume_ip.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %devfreq = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 18
  %call16 = tail call i32 @lima_devfreq_resume(ptr noundef %devfreq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %err_out1.thread

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_out1.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %while.body.lr.ph

err_out1:                                         ; preds = %lima_resume_ip.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %i.073) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.073)
  %cmp2376.not = icmp eq i32 %i.073, 0
  br i1 %cmp2376.not, label %err_out1.while.end_crit_edge, label %err_out1.while.body.lr.ph_crit_edge

err_out1.while.body.lr.ph_crit_edge:              ; preds = %err_out1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph

err_out1.while.end_crit_edge:                     ; preds = %err_out1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %err_out1.while.body.lr.ph_crit_edge, %err_out1.thread
  %err.083 = phi i32 [ %call16, %err_out1.thread ], [ %call.i49, %err_out1.while.body.lr.ph_crit_edge ]
  %i.07282 = phi i32 [ 26, %err_out1.thread ], [ %i.073, %err_out1.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %lima_suspend_ip.exit.while.body_crit_edge, %while.body.lr.ph
  %dec77.in = phi i32 [ %i.07282, %while.body.lr.ph ], [ %dec77, %lima_suspend_ip.exit.while.body_crit_edge ]
  %dec77 = add nsw i32 %dec77.in, -1
  %present.i52 = getelementptr %struct.lima_ip, ptr %ip1.i, i32 %dec77, i32 2
  %10 = ptrtoint ptr %present.i52 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %present.i52, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i53 = icmp eq i8 %11, 0
  br i1 %tobool.not.i53, label %while.body.lima_suspend_ip.exit_crit_edge, label %if.then.i55

while.body.lima_suspend_ip.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_suspend_ip.exit

if.then.i55:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr2.i54 = getelementptr %struct.lima_ip, ptr %ip1.i, i32 %dec77
  %suspend.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %dec77, i32 7
  %12 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %suspend.i, align 4
  tail call void %13(ptr noundef %add.ptr2.i54) #5
  br label %lima_suspend_ip.exit

lima_suspend_ip.exit:                             ; preds = %if.then.i55, %while.body.lima_suspend_ip.exit_crit_edge
  %cmp23 = icmp sgt i32 %dec77.in, 1
  br i1 %cmp23, label %lima_suspend_ip.exit.while.body_crit_edge, label %lima_suspend_ip.exit.while.end_crit_edge

lima_suspend_ip.exit.while.end_crit_edge:         ; preds = %lima_suspend_ip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

lima_suspend_ip.exit.while.body_crit_edge:        ; preds = %lima_suspend_ip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %lima_suspend_ip.exit.while.end_crit_edge, %err_out1.while.end_crit_edge
  %err.084 = phi i32 [ %call.i49, %err_out1.while.end_crit_edge ], [ %err.083, %lima_suspend_ip.exit.while.end_crit_edge ]
  %14 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regulator.i, align 8
  %tobool.not.i58 = icmp eq ptr %15, null
  br i1 %tobool.not.i58, label %while.end.err_out0_crit_edge, label %if.then.i60

while.end.err_out0_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out0

if.then.i60:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i59 = tail call i32 @regulator_disable(ptr noundef nonnull %15) #5
  br label %err_out0

err_out0:                                         ; preds = %if.then.i60, %while.end.err_out0_crit_edge, %do.end7
  %err.1 = phi i32 [ %call.i, %do.end7 ], [ %err.084, %while.end.err_out0_crit_edge ], [ %err.084, %if.then.i60 ]
  %reset.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset.i, align 4
  %tobool.not.i62 = icmp eq ptr %17, null
  br i1 %tobool.not.i62, label %err_out0.lima_clk_disable.exit_crit_edge, label %if.then.i64

err_out0.lima_clk_disable.exit_crit_edge:         ; preds = %err_out0
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_clk_disable.exit

if.then.i64:                                      ; preds = %err_out0
  call void @__sanitizer_cov_trace_pc() #7
  %call.i63 = tail call i32 @reset_control_assert(ptr noundef nonnull %17) #5
  br label %lima_clk_disable.exit

lima_clk_disable.exit:                            ; preds = %if.then.i64, %err_out0.lima_clk_disable.exit_crit_edge
  %clk_gpu.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %clk_gpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_gpu.i, align 8
  tail call void @clk_disable(ptr noundef %19) #5
  tail call void @clk_unprepare(ptr noundef %19) #5
  %clk_bus.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_bus.i, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %cleanup

cleanup:                                          ; preds = %lima_clk_disable.exit, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %err.1, %lima_clk_disable.exit ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lima_clk_enable(ptr nocapture noundef readonly %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_bus = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %clk_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_bus, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_gpu = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %clk_gpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_gpu, align 8
  %call.i27 = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.end.i31, label %if.end.error_out0_crit_edge

if.end.error_out0_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out0

if.end.i31:                                       ; preds = %if.end
  %call1.i29 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool2.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool2.not.i30, label %if.end4, label %if.end.i31.error_out0.sink.split_crit_edge

if.end.i31.error_out0.sink.split_crit_edge:       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out0.sink.split

if.end4:                                          ; preds = %if.end.i31
  %reset = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %call8 = tail call i32 @reset_control_deassert(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.cleanup_crit_edge, label %do.end

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.66, i32 noundef %call8) #8
  %8 = ptrtoint ptr %clk_gpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_gpu, align 8
  tail call void @clk_disable(ptr noundef %9) #5
  br label %error_out0.sink.split

error_out0.sink.split:                            ; preds = %do.end, %if.end.i31.error_out0.sink.split_crit_edge
  %.sink = phi ptr [ %9, %do.end ], [ %3, %if.end.i31.error_out0.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call8, %do.end ], [ %call1.i29, %if.end.i31.error_out0.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %error_out0

error_out0:                                       ; preds = %error_out0.sink.split, %if.end.error_out0_crit_edge
  %err.0 = phi i32 [ %call.i27, %if.end.error_out0_crit_edge ], [ %err.0.ph, %error_out0.sink.split ]
  %10 = ptrtoint ptr %clk_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_bus, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error_out0, %if.end.i.cleanup.sink.split_crit_edge
  %.sink39 = phi ptr [ %11, %error_out0 ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %err.0, %error_out0 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink39) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_devfreq_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_device_suspend(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_rq_count = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count, i32 noundef 4) #5
  %2 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %hw_rq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %entry
  %hw_rq_count.1 = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 7
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count.1, i32 noundef 4) #5
  %4 = ptrtoint ptr %hw_rq_count.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %hw_rq_count.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %devfreq = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 18
  %call2 = tail call i32 @lima_devfreq_suspend(ptr noundef %devfreq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond6.preheader, label %do.end

for.cond6.preheader:                              ; preds = %for.cond.1
  %ip1.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 11
  br label %for.body8

do.end:                                           ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %cleanup

for.body8:                                        ; preds = %lima_suspend_ip.exit.for.body8_crit_edge, %for.cond6.preheader
  %i.130 = phi i32 [ 25, %for.cond6.preheader ], [ %dec, %lima_suspend_ip.exit.for.body8_crit_edge ]
  %present.i = getelementptr %struct.lima_ip, ptr %ip1.i, i32 %i.130, i32 2
  %6 = ptrtoint ptr %present.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present.i, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body8.lima_suspend_ip.exit_crit_edge, label %if.then.i

for.body8.lima_suspend_ip.exit_crit_edge:         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_suspend_ip.exit

if.then.i:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr2.i = getelementptr %struct.lima_ip, ptr %ip1.i, i32 %i.130
  %suspend.i = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %i.130, i32 7
  %8 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend.i, align 4
  tail call void %9(ptr noundef %add.ptr2.i) #5
  br label %lima_suspend_ip.exit

lima_suspend_ip.exit:                             ; preds = %if.then.i, %for.body8.lima_suspend_ip.exit_crit_edge
  %dec = add nsw i32 %i.130, -1
  %cmp7.not = icmp eq i32 %i.130, 0
  br i1 %cmp7.not, label %for.end10, label %lima_suspend_ip.exit.for.body8_crit_edge

lima_suspend_ip.exit.for.body8_crit_edge:         ; preds = %lima_suspend_ip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.end10:                                        ; preds = %lima_suspend_ip.exit
  %regulator.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulator.i, align 8
  %tobool.not.i24 = icmp eq ptr %11, null
  br i1 %tobool.not.i24, label %for.end10.lima_regulator_disable.exit_crit_edge, label %if.then.i25

for.end10.lima_regulator_disable.exit_crit_edge:  ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_regulator_disable.exit

if.then.i25:                                      ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @regulator_disable(ptr noundef nonnull %11) #5
  br label %lima_regulator_disable.exit

lima_regulator_disable.exit:                      ; preds = %if.then.i25, %for.end10.lima_regulator_disable.exit_crit_edge
  %reset.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset.i, align 4
  %tobool.not.i26 = icmp eq ptr %13, null
  br i1 %tobool.not.i26, label %lima_regulator_disable.exit.lima_clk_disable.exit_crit_edge, label %if.then.i28

lima_regulator_disable.exit.lima_clk_disable.exit_crit_edge: ; preds = %lima_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_clk_disable.exit

if.then.i28:                                      ; preds = %lima_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i27 = tail call i32 @reset_control_assert(ptr noundef nonnull %13) #5
  br label %lima_clk_disable.exit

lima_clk_disable.exit:                            ; preds = %if.then.i28, %lima_regulator_disable.exit.lima_clk_disable.exit_crit_edge
  %clk_gpu.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %clk_gpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_gpu.i, align 8
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  %clk_bus.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_bus.i, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %cleanup

cleanup:                                          ; preds = %lima_clk_disable.exit, %do.end, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %lima_clk_disable.exit ], [ -16, %for.cond.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_devfreq_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pmu_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pmu_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pmu_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pmu_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_mmu_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_mmu_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gp_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_gp_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gp_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_gp_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_l2_cache_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_l2_cache_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_l2_cache_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_l2_cache_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_dlbu_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_dlbu_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_bcast_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_bcast_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_bcast_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_bcast_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_bcast_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_bcast_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_bcast_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_bcast_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_sched_pipe_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gp_pipe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_sched_pipe_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_pipe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_gp_pipe_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_pipe_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 392, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lima_device_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lima_device_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @lima_device_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 415, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 417, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @lima_device_init._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @lima_device_init._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 418, i32 2}
!18 = !{ptr @lima_device_init._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @lima_device_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 475, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lima_device_resume._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @lima_device_resume._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 481, i32 3}
!27 = !{ptr @lima_device_resume._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lima_device_resume._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 488, i32 4}
!31 = !{ptr @lima_device_resume._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lima_device_resume._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 495, i32 3}
!35 = !{ptr @lima_device_resume._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @lima_device_resume._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 523, i32 3}
!39 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @lima_device_suspend._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @lima_device_suspend._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 52, i32 2}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 65, i32 2}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 66, i32 2}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 67, i32 2}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 68, i32 2}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 69, i32 2}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 70, i32 2}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 71, i32 2}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 72, i32 2}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 73, i32 2}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 56, i32 2}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 57, i32 2}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 58, i32 2}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 59, i32 2}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 60, i32 2}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 61, i32 2}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 62, i32 2}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 63, i32 2}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 64, i32 2}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 53, i32 2}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 54, i32 2}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 55, i32 2}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 74, i32 2}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 75, i32 2}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 76, i32 2}
!92 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 77, i32 2}
!95 = !{ptr @lima_ip_desc, !96, !"lima_ip_desc", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 51, i32 28}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 127, i32 40}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 131, i32 4}
!101 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @lima_clk_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @lima_clk_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 136, i32 40}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 140, i32 4}
!108 = !{ptr @lima_clk_init._entry.57, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @lima_clk_init._entry_ptr.59, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 149, i32 4}
!112 = !{ptr @lima_clk_init._entry.60, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @lima_clk_init._entry_ptr.62, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 189, i32 57}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 196, i32 4}
!118 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @lima_regulator_init._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @lima_regulator_init._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 100, i32 4}
!123 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lima_clk_enable._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @lima_clk_enable._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/lima/lima_device.c", i32 172, i32 3}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @lima_regulator_enable._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @lima_regulator_enable._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i8 0, i8 2}
!141 = !{i64 2148642381}
!142 = !{i64 2148556821, i64 2148556853, i64 2148556882, i64 2148556916, i64 2148556947, i64 2148556970}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{i64 2149888986}
