; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/socinfo.c_pt.bc'
source_filename = "../drivers/soc/qcom/socinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_id = type { i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.qcom_socinfo = type { ptr, %struct.soc_device_attribute, ptr, %struct.socinfo_params }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.socinfo_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.socinfo = type { i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32 }
%struct.smem_image_version = type { [75 x i8], [20 x i8], i8, [32 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_socinfo__223_672_qcom_socinfo_driver_init6 = internal global ptr @qcom_socinfo_driver_init, section ".initcall6.init", align 4
@qcom_socinfo_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_socinfo_probe, ptr @qcom_socinfo_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_socinfo_driver_exit = internal global ptr @qcom_socinfo_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [44 x i8] c"socinfo.description=Qualcomm SoCinfo driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [38 x i8] c"socinfo.file=drivers/soc/qcom/socinfo\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [23 x i8] c"socinfo.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias227 = internal constant [36 x i8] c"socinfo.alias=platform:qcom-socinfo\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom-socinfo\00", [19 x i8] zeroinitializer }, align 32
@qcom_socinfo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't find socinfo\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_socinfo_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/soc/qcom/socinfo.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_socinfo_probe._entry_ptr = internal global ptr @qcom_socinfo_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Snapdragon\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@soc_id = internal constant { [120 x %struct.soc_id], [224 x i8] } { [120 x %struct.soc_id] [%struct.soc_id { i32 87, ptr @.str.9 }, %struct.soc_id { i32 109, ptr @.str.10 }, %struct.soc_id { i32 122, ptr @.str.11 }, %struct.soc_id { i32 123, ptr @.str.12 }, %struct.soc_id { i32 124, ptr @.str.13 }, %struct.soc_id { i32 126, ptr @.str.14 }, %struct.soc_id { i32 130, ptr @.str.15 }, %struct.soc_id { i32 138, ptr @.str.16 }, %struct.soc_id { i32 139, ptr @.str.17 }, %struct.soc_id { i32 140, ptr @.str.18 }, %struct.soc_id { i32 141, ptr @.str.19 }, %struct.soc_id { i32 145, ptr @.str.20 }, %struct.soc_id { i32 147, ptr @.str.21 }, %struct.soc_id { i32 153, ptr @.str.22 }, %struct.soc_id { i32 158, ptr @.str.23 }, %struct.soc_id { i32 159, ptr @.str.24 }, %struct.soc_id { i32 161, ptr @.str.25 }, %struct.soc_id { i32 162, ptr @.str.26 }, %struct.soc_id { i32 163, ptr @.str.27 }, %struct.soc_id { i32 164, ptr @.str.28 }, %struct.soc_id { i32 165, ptr @.str.29 }, %struct.soc_id { i32 166, ptr @.str.30 }, %struct.soc_id { i32 168, ptr @.str.31 }, %struct.soc_id { i32 169, ptr @.str.32 }, %struct.soc_id { i32 170, ptr @.str.33 }, %struct.soc_id { i32 172, ptr @.str.34 }, %struct.soc_id { i32 178, ptr @.str.35 }, %struct.soc_id { i32 184, ptr @.str.36 }, %struct.soc_id { i32 185, ptr @.str.37 }, %struct.soc_id { i32 186, ptr @.str.38 }, %struct.soc_id { i32 194, ptr @.str.39 }, %struct.soc_id { i32 198, ptr @.str.40 }, %struct.soc_id { i32 199, ptr @.str.41 }, %struct.soc_id { i32 200, ptr @.str.42 }, %struct.soc_id { i32 205, ptr @.str.43 }, %struct.soc_id { i32 206, ptr @.str.44 }, %struct.soc_id { i32 207, ptr @.str.45 }, %struct.soc_id { i32 208, ptr @.str.46 }, %struct.soc_id { i32 209, ptr @.str.47 }, %struct.soc_id { i32 210, ptr @.str.48 }, %struct.soc_id { i32 211, ptr @.str.49 }, %struct.soc_id { i32 212, ptr @.str.50 }, %struct.soc_id { i32 213, ptr @.str.51 }, %struct.soc_id { i32 214, ptr @.str.52 }, %struct.soc_id { i32 215, ptr @.str.53 }, %struct.soc_id { i32 216, ptr @.str.54 }, %struct.soc_id { i32 217, ptr @.str.55 }, %struct.soc_id { i32 218, ptr @.str.56 }, %struct.soc_id { i32 219, ptr @.str.57 }, %struct.soc_id { i32 220, ptr @.str.58 }, %struct.soc_id { i32 221, ptr @.str.59 }, %struct.soc_id { i32 222, ptr @.str.60 }, %struct.soc_id { i32 223, ptr @.str.61 }, %struct.soc_id { i32 224, ptr @.str.62 }, %struct.soc_id { i32 225, ptr @.str.63 }, %struct.soc_id { i32 226, ptr @.str.64 }, %struct.soc_id { i32 233, ptr @.str.65 }, %struct.soc_id { i32 239, ptr @.str.66 }, %struct.soc_id { i32 240, ptr @.str.67 }, %struct.soc_id { i32 241, ptr @.str.68 }, %struct.soc_id { i32 246, ptr @.str.69 }, %struct.soc_id { i32 247, ptr @.str.70 }, %struct.soc_id { i32 248, ptr @.str.71 }, %struct.soc_id { i32 249, ptr @.str.72 }, %struct.soc_id { i32 250, ptr @.str.73 }, %struct.soc_id { i32 251, ptr @.str.74 }, %struct.soc_id { i32 253, ptr @.str.75 }, %struct.soc_id { i32 290, ptr @.str.76 }, %struct.soc_id { i32 291, ptr @.str.77 }, %struct.soc_id { i32 292, ptr @.str.78 }, %struct.soc_id { i32 293, ptr @.str.79 }, %struct.soc_id { i32 296, ptr @.str.80 }, %struct.soc_id { i32 297, ptr @.str.81 }, %struct.soc_id { i32 298, ptr @.str.82 }, %struct.soc_id { i32 299, ptr @.str.83 }, %struct.soc_id { i32 304, ptr @.str.84 }, %struct.soc_id { i32 305, ptr @.str.85 }, %struct.soc_id { i32 310, ptr @.str.86 }, %struct.soc_id { i32 311, ptr @.str.87 }, %struct.soc_id { i32 312, ptr @.str.88 }, %struct.soc_id { i32 317, ptr @.str.89 }, %struct.soc_id { i32 318, ptr @.str.90 }, %struct.soc_id { i32 319, ptr @.str.91 }, %struct.soc_id { i32 321, ptr @.str.92 }, %struct.soc_id { i32 322, ptr @.str.93 }, %struct.soc_id { i32 323, ptr @.str.94 }, %struct.soc_id { i32 324, ptr @.str.95 }, %struct.soc_id { i32 325, ptr @.str.96 }, %struct.soc_id { i32 326, ptr @.str.97 }, %struct.soc_id { i32 327, ptr @.str.98 }, %struct.soc_id { i32 338, ptr @.str.99 }, %struct.soc_id { i32 341, ptr @.str.100 }, %struct.soc_id { i32 342, ptr @.str.101 }, %struct.soc_id { i32 343, ptr @.str.102 }, %struct.soc_id { i32 344, ptr @.str.103 }, %struct.soc_id { i32 345, ptr @.str.104 }, %struct.soc_id { i32 346, ptr @.str.105 }, %struct.soc_id { i32 349, ptr @.str.106 }, %struct.soc_id { i32 350, ptr @.str.107 }, %struct.soc_id { i32 351, ptr @.str.108 }, %struct.soc_id { i32 356, ptr @.str.109 }, %struct.soc_id { i32 375, ptr @.str.110 }, %struct.soc_id { i32 376, ptr @.str.111 }, %struct.soc_id { i32 389, ptr @.str.112 }, %struct.soc_id { i32 390, ptr @.str.113 }, %struct.soc_id { i32 391, ptr @.str.114 }, %struct.soc_id { i32 392, ptr @.str.115 }, %struct.soc_id { i32 394, ptr @.str.116 }, %struct.soc_id { i32 395, ptr @.str.117 }, %struct.soc_id { i32 396, ptr @.str.118 }, %struct.soc_id { i32 402, ptr @.str.119 }, %struct.soc_id { i32 403, ptr @.str.120 }, %struct.soc_id { i32 421, ptr @.str.121 }, %struct.soc_id { i32 422, ptr @.str.122 }, %struct.soc_id { i32 425, ptr @.str.123 }, %struct.soc_id { i32 434, ptr @.str.124 }, %struct.soc_id { i32 453, ptr @.str.125 }, %struct.soc_id { i32 455, ptr @.str.126 }, %struct.soc_id { i32 457, ptr @.str.127 }, %struct.soc_id { i32 459, ptr @.str.128 }], [224 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8960\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8064\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSM8660A\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSM8260A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"APQ8060A\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8974\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPQ8064\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MSM8960AB\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APQ8060AB\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MSM8260AB\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MSM8660AB\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8626\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8610\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APQ8064AB\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8226\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8526\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8110\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8210\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8810\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8212\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8612\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8112\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSM8225Q\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSM8625Q\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSM8125Q\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APQ8064AA\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8084\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8074\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8274\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8674\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8974PRO\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8126\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8026\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8926\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8326\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8916\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8994\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"APQ8074-AA\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"APQ8074-AB\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"APQ8074PRO\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8274-AA\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8274-AB\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8274PRO\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8674-AA\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8674-AB\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8674PRO\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8974-AA\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSM8974-AB\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8028\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8128\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8228\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8528\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8628\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8928\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8510\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8512\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8936\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8939\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8036\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8039\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8996\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8016\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8216\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8116\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8616\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8992\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8094\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDM9607\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8096\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8998\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSM8953\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDM8207\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDM9207\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDM9307\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDM9628\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8053\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MSM8996SG\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MSM8996AU\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APQ8096AU\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APQ8096SG\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDM660\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDM630\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"APQ8098\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDM845\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDM9206\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ8074\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDA660\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDM658\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDA658\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDA630\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDM450\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDA845\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ8072\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ8076\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ8078\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDM636\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDA636\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDM632\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDA632\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDA450\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SM8250\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ8070\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ8071\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IPQ8072A\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IPQ8074A\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IPQ8076A\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IPQ8078A\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SM6125\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IPQ8070A\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IPQ8071A\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ6018\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ6028\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ6000\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ6010\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SC7180\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SM6350\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPQ6005\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QRB5165\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SM8450\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SM7225\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_socinfo\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"info_fmt\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nmodem_supported\00", [47 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"num_clusters\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ncluster_array_offset\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"num_defective_parts\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ndefective_parts_array_offset\00", [34 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nproduct_id\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip_id\00", [24 x i8] zeroinitializer }, align 32
@qcom_chip_id_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qcom_open_chip_id, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chip_family\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raw_device_family\00", [46 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raw_device_number\00", [46 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pmic_model_array\00", [47 x i8] zeroinitializer }, align 32
@qcom_pmic_model_array_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qcom_open_pmic_model_array, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"foundry_id\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pmic_model\00", [21 x i8] zeroinitializer }, align 32
@qcom_pmic_model_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qcom_open_pmic_model, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmic_die_rev\00", [19 x i8] zeroinitializer }, align 32
@qcom_pmic_die_rev_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qcom_open_pmic_die_rev, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hardware_platform_subtype\00", [38 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"accessory_chip\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"platform_version\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hardware_platform\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"raw_version\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"build_id\00", [23 x i8] zeroinitializer }, align 32
@qcom_build_id_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qcom_open_build_id, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@socinfo_image_names = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.193, ptr @.str.194, ptr null, ptr @.str.195, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200], [36 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@qcom_image_name_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_image_name, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"variant\00", [24 x i8] zeroinitializer }, align 32
@qcom_image_variant_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_image_variant, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oem\00", [28 x i8] zeroinitializer }, align 32
@qcom_image_oem_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_image_oem, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pmic_models = internal constant { [42 x ptr], [56 x i8] } { [42 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr null, ptr null, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr null, ptr null, ptr @.str.189, ptr null, ptr @.str.190, ptr null, ptr null, ptr @.str.191], [56 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %u.%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown (%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown PMIC model\00", [45 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8941\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8841\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8019\00", [25 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8226\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8110\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PMA8084\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PMI8962\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PMD9635\00", [24 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8994\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PMI8994\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8916\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8004\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PM8909/PM8058\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8028\00", [25 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8901\00", [25 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PM8950/PM8027\00", [18 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PMI8950/ISL9519\00", [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PMK8001/PM8921\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PMI8996/PM8018\00", [17 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PM8998/PM8015\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PMI8998/PM8014\00", [17 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8821\00", [25 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8038\00", [25 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PM8005/PM8922\00", [18 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8917\00", [25 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM660L\00", [25 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PM660\00", [26 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8150\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PM8150L\00", [24 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PM8150B\00", [24 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PMK8002\00", [24 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PM8009\00", [25 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PM8150C\00", [24 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMB2351\00", [24 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u.%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"boot\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tz\00", [29 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rpm\00", [28 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apps\00", [27 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpss\00", [27 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adsp\00", [27 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cnss\00", [27 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"qcom_socinfo_driver\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 664, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 668, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 618, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 626, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 629, i32 59 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 631, i32 61 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"soc_id\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 200, i32 28 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 201, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 202, i32 9 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 203, i32 9 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 204, i32 9 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 205, i32 9 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 206, i32 9 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 207, i32 9 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 208, i32 9 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 209, i32 9 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 210, i32 9 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 211, i32 9 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 212, i32 9 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 213, i32 9 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 214, i32 9 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 215, i32 9 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 216, i32 9 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 217, i32 9 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 218, i32 9 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 219, i32 9 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 220, i32 9 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 221, i32 9 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 222, i32 9 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 223, i32 9 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 224, i32 9 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 225, i32 9 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 226, i32 9 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 227, i32 9 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 228, i32 9 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 229, i32 9 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 230, i32 9 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 231, i32 9 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 232, i32 9 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 233, i32 9 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 234, i32 9 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 235, i32 9 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 236, i32 9 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 237, i32 9 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 238, i32 9 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 239, i32 9 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 240, i32 9 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 241, i32 9 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 242, i32 9 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 243, i32 9 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 244, i32 9 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 245, i32 9 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 246, i32 9 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 247, i32 9 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 248, i32 9 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 249, i32 9 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 250, i32 9 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 251, i32 9 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 252, i32 9 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 253, i32 9 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 254, i32 9 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 255, i32 9 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 256, i32 9 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 257, i32 9 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 258, i32 9 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 259, i32 9 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 260, i32 9 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 261, i32 9 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 262, i32 9 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 263, i32 9 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 264, i32 9 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 265, i32 9 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 266, i32 9 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 267, i32 9 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 268, i32 9 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 269, i32 9 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 270, i32 9 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 271, i32 9 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 272, i32 9 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 273, i32 9 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 274, i32 9 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 275, i32 9 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 276, i32 9 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 277, i32 9 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 278, i32 9 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 279, i32 9 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 280, i32 9 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 281, i32 9 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 282, i32 9 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 283, i32 9 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 284, i32 9 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 285, i32 9 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 286, i32 9 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 287, i32 9 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 288, i32 9 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 289, i32 9 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 290, i32 9 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 291, i32 9 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 292, i32 9 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 293, i32 9 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 294, i32 9 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 295, i32 9 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 296, i32 9 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 297, i32 9 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 298, i32 9 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 299, i32 9 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 300, i32 9 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 301, i32 9 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 302, i32 9 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 303, i32 9 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 304, i32 9 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 305, i32 9 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 306, i32 9 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 307, i32 9 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 308, i32 9 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 9 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 310, i32 9 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 311, i32 9 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 312, i32 9 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 313, i32 9 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 314, i32 9 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 315, i32 9 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 316, i32 9 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 317, i32 9 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 318, i32 9 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 319, i32 9 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 320, i32 9 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 467, i32 46 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 471, i32 21 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 478, i32 22 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 487, i32 22 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 489, i32 22 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 491, i32 22 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 493, i32 22 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 499, i32 22 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 501, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant [17 x i8] c"qcom_chip_id_ops\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 431, i32 1 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 511, i32 22 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 513, i32 22 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 516, i32 22 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 524, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant [26 x i8] c"qcom_pmic_model_array_ops\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 429, i32 1 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 530, i32 22 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 535, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant [20 x i8] c"qcom_pmic_model_ops\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 428, i32 1 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 536, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant [22 x i8] c"qcom_pmic_die_rev_ops\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 430, i32 1 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 542, i32 22 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 550, i32 22 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 557, i32 22 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 564, i32 22 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 571, i32 22 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 575, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant [18 x i8] c"qcom_build_id_ops\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 427, i32 1 }
@___asan_gen_.678 = private unnamed_addr constant [20 x i8] c"socinfo_image_names\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 60, i32 26 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 588, i32 23 }
@___asan_gen_.684 = private unnamed_addr constant [20 x i8] c"qcom_image_name_ops\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 453, i32 1 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 590, i32 23 }
@___asan_gen_.690 = private unnamed_addr constant [23 x i8] c"qcom_image_variant_ops\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 454, i32 1 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 592, i32 23 }
@___asan_gen_.696 = private unnamed_addr constant [19 x i8] c"qcom_image_oem_ops\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 455, i32 1 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 422, i32 18 }
@___asan_gen_.702 = private unnamed_addr constant [12 x i8] c"pmic_models\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 71, i32 26 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 397, i32 20 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 401, i32 20 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 72, i32 9 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 73, i32 9 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 74, i32 9 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 75, i32 9 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 76, i32 9 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 77, i32 9 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 78, i32 9 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 79, i32 9 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 80, i32 9 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 81, i32 9 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 82, i32 9 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 83, i32 9 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 84, i32 9 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 85, i32 9 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 86, i32 9 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 87, i32 9 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 88, i32 9 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 89, i32 9 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 90, i32 9 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 91, i32 9 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 92, i32 9 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 93, i32 9 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 94, i32 9 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 95, i32 9 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 96, i32 9 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 97, i32 9 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 98, i32 9 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 99, i32 9 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 100, i32 9 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 101, i32 9 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 102, i32 9 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 103, i32 9 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 104, i32 9 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 105, i32 9 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 106, i32 9 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 411, i32 18 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 63, i32 34 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 67, i32 32 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 66, i32 33 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 62, i32 34 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 65, i32 34 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 61, i32 34 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 64, i32 34 }
@___asan_gen_.840 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.841 = private constant [30 x i8] c"../drivers/soc/qcom/socinfo.c\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 68, i32 35 }
@llvm.compiler.used = appending global [222 x ptr] [ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_qcom_socinfo_driver_exit, ptr @__initcall__kmod_socinfo__223_672_qcom_socinfo_driver_init6, ptr @qcom_socinfo_driver_exit, ptr @qcom_socinfo_probe._entry, ptr @qcom_socinfo_probe._entry_ptr, ptr @qcom_socinfo_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @soc_id, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @qcom_chip_id_ops, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @qcom_pmic_model_array_ops, ptr @.str.142, ptr @.str.143, ptr @qcom_pmic_model_ops, ptr @.str.144, ptr @qcom_pmic_die_rev_ops, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @qcom_build_id_ops, ptr @socinfo_image_names, ptr @.str.151, ptr @qcom_image_name_ops, ptr @.str.152, ptr @qcom_image_variant_ops, ptr @.str.153, ptr @qcom_image_oem_ops, ptr @.str.154, ptr @pmic_models, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200], section "llvm.metadata"
@0 = internal global [214 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_socinfo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_socinfo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_id to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_chip_id_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_model_array_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_model_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pmic_die_rev_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_build_id_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socinfo_image_names to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_image_name_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_image_variant_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_image_oem_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_models to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_socinfo_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_socinfo_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_socinfo_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_socinfo_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_socinfo_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %size.i = alloca i32, align 4
  %item_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %item_size) #6
  %0 = ptrtoint ptr %item_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %item_size, align 4, !annotation !443
  %call = call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 137, ptr noundef nonnull %item_size) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %attr = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 1
  %family = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.6, ptr %family, align 4
  %id = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6
  %idx.02.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [120 x %struct.soc_id], ptr @soc_id, i32 0, i32 %idx.02.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp2.i = icmp eq i32 %7, %5
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr [120 x %struct.soc_id], ptr @soc_id, i32 0, i32 %idx.02.i, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  br label %socinfo_machine.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 120
  br i1 %exitcond.not.i, label %for.inc.i.socinfo_machine.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.socinfo_machine.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %socinfo_machine.exit

socinfo_machine.exit:                             ; preds = %for.inc.i.socinfo_machine.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %9, %if.then.i ], [ null, %for.inc.i.socinfo_machine.exit_crit_edge ]
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %attr, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %call12 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %13) #6
  %soc_id = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %soc_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %soc_id, align 4
  %ver = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ver, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %shr = lshr i32 %17, 16
  %and16 = and i32 %17, 65535
  %call17 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.8, i32 noundef %shr, i32 noundef %and16) #6
  %revision = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %revision, align 4
  %19 = ptrtoint ptr %item_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %item_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %20)
  %cmp = icmp ugt i32 %20, 95
  br i1 %cmp, label %if.then19, label %socinfo_machine.exit.if.end23_crit_edge

socinfo_machine.exit.if.end23_crit_edge:          ; preds = %socinfo_machine.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %socinfo_machine.exit
  call void @__sanitizer_cov_trace_pc() #8
  %serial_num = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 17
  %21 = ptrtoint ptr %serial_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %serial_num, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %call21 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %23) #6
  %serial_number = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %serial_number to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call21, ptr %serial_number, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %socinfo_machine.exit.if.end23_crit_edge
  %call25 = call ptr @soc_device_register(ptr noundef %attr) #6
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call25, ptr %call.i, align 4
  %cmp.i59 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %27 = ptrtoint ptr %item_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %item_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #6
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %size.i, align 4, !annotation !443
  %call.i60 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.129, ptr noundef null) #6
  %dbg_root.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i60, ptr %dbg_root.i, align 4
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  %info1.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3
  %fmt2.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 9
  %34 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fmt2.i, align 4
  call void @debugfs_create_x32(ptr noundef nonnull @.str.130, i16 noundef zeroext 292, ptr noundef %call.i60, ptr noundef %fmt2.i) #6
  %35 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fmt2.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %if.end31.sw.epilog.i_crit_edge [
    i32 15, label %sw.bb.i
    i32 14, label %if.end31.sw.bb13.i_crit_edge
    i32 13, label %if.end31.sw.bb34.i_crit_edge
    i32 12, label %if.end31.sw.bb42.i_crit_edge
    i32 11, label %if.end31.sw.bb58.i_crit_edge
    i32 10, label %if.end31.sw.bb64.i_crit_edge
    i32 9, label %if.end31.sw.bb64.i_crit_edge73
    i32 8, label %if.end31.sw.bb70.i_crit_edge
    i32 7, label %if.end31.sw.bb70.i_crit_edge74
    i32 6, label %if.end31.sw.bb75.i_crit_edge
    i32 5, label %if.end31.sw.bb81.i_crit_edge
    i32 4, label %if.end31.sw.bb87.i_crit_edge
    i32 3, label %if.end31.sw.bb93.i_crit_edge
    i32 2, label %if.end31.sw.bb99.i_crit_edge
    i32 1, label %if.end31.sw.bb105.i_crit_edge
  ]

if.end31.sw.bb105.i_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb105.i

if.end31.sw.bb99.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb99.i

if.end31.sw.bb93.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb93.i

if.end31.sw.bb87.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb87.i

if.end31.sw.bb81.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb81.i

if.end31.sw.bb75.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb75.i

if.end31.sw.bb70.i_crit_edge74:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb70.i

if.end31.sw.bb70.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb70.i

if.end31.sw.bb64.i_crit_edge73:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64.i

if.end31.sw.bb64.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64.i

if.end31.sw.bb58.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb58.i

if.end31.sw.bb42.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42.i

if.end31.sw.bb34.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb34.i

if.end31.sw.bb13.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end31.sw.epilog.i_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %nmodem_supported.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 29
  %38 = ptrtoint ptr %nmodem_supported.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nmodem_supported.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #6
  %nmodem_supported9.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 15
  %41 = ptrtoint ptr %nmodem_supported9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %nmodem_supported9.i, align 4
  %42 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.131, i16 noundef zeroext 292, ptr noundef %43, ptr noundef %nmodem_supported9.i) #6
  br label %sw.bb13.i

sw.bb13.i:                                        ; preds = %sw.bb.i, %if.end31.sw.bb13.i_crit_edge
  %num_clusters.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 25
  %44 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_clusters.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #6
  %num_clusters15.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 11
  %47 = ptrtoint ptr %num_clusters15.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %num_clusters15.i, align 4
  %ncluster_array_offset.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 26
  %48 = ptrtoint ptr %ncluster_array_offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ncluster_array_offset.i, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #6
  %ncluster_array_offset17.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 12
  %51 = ptrtoint ptr %ncluster_array_offset17.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ncluster_array_offset17.i, align 4
  %num_defective_parts.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 27
  %52 = ptrtoint ptr %num_defective_parts.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_defective_parts.i, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #6
  %num_defective_parts19.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 13
  %55 = ptrtoint ptr %num_defective_parts19.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %num_defective_parts19.i, align 4
  %ndefective_parts_array_offset.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 28
  %56 = ptrtoint ptr %ndefective_parts_array_offset.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ndefective_parts_array_offset.i, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #6
  %ndefective_parts_array_offset21.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 14
  %59 = ptrtoint ptr %ndefective_parts_array_offset21.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %ndefective_parts_array_offset21.i, align 4
  %60 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.132, i16 noundef zeroext 292, ptr noundef %61, ptr noundef %num_clusters15.i) #6
  %62 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.133, i16 noundef zeroext 292, ptr noundef %63, ptr noundef %ncluster_array_offset17.i) #6
  %64 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.134, i16 noundef zeroext 292, ptr noundef %65, ptr noundef %num_defective_parts19.i) #6
  %66 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.135, i16 noundef zeroext 292, ptr noundef %67, ptr noundef %ndefective_parts_array_offset21.i) #6
  br label %sw.bb34.i

sw.bb34.i:                                        ; preds = %sw.bb13.i, %if.end31.sw.bb34.i_crit_edge
  %nproduct_id.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 23
  %68 = ptrtoint ptr %nproduct_id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nproduct_id.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #6
  %nproduct_id36.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 10
  %71 = ptrtoint ptr %nproduct_id36.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %nproduct_id36.i, align 4
  %72 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.136, i16 noundef zeroext 292, ptr noundef %73, ptr noundef %nproduct_id36.i) #6
  %74 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dbg_root.i, align 4
  %call41.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.137, i16 noundef zeroext 292, ptr noundef %75, ptr noundef %call, ptr noundef nonnull @qcom_chip_id_ops) #6
  br label %sw.bb42.i

sw.bb42.i:                                        ; preds = %sw.bb34.i, %if.end31.sw.bb42.i_crit_edge
  %chip_family.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 20
  %76 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chip_family.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #6
  %chip_family44.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 4
  %79 = ptrtoint ptr %chip_family44.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %chip_family44.i, align 4
  %raw_device_family.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 21
  %80 = ptrtoint ptr %raw_device_family.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %raw_device_family.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #6
  %83 = ptrtoint ptr %info1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %info1.i, align 4
  %raw_device_num.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 22
  %84 = ptrtoint ptr %raw_device_num.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %raw_device_num.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #6
  %raw_device_num48.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 3
  %87 = ptrtoint ptr %raw_device_num48.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %raw_device_num48.i, align 4
  %88 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_x32(ptr noundef nonnull @.str.138, i16 noundef zeroext 292, ptr noundef %89, ptr noundef %chip_family44.i) #6
  %90 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_x32(ptr noundef nonnull @.str.139, i16 noundef zeroext 292, ptr noundef %91, ptr noundef %info1.i) #6
  %92 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_x32(ptr noundef nonnull @.str.140, i16 noundef zeroext 292, ptr noundef %93, ptr noundef %raw_device_num48.i) #6
  br label %sw.bb58.i

sw.bb58.i:                                        ; preds = %sw.bb42.i, %if.end31.sw.bb58.i_crit_edge
  %num_pmics59.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 18
  %94 = ptrtoint ptr %num_pmics59.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_pmics59.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #6
  %pmic_array_offset60.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 19
  %97 = ptrtoint ptr %pmic_array_offset60.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pmic_array_offset60.i, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98) #6
  %mul61.i = shl i32 %96, 3
  %add.i = add i32 %99, %mul61.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %28)
  %cmp.not.i = icmp ugt i32 %add.i, %28
  br i1 %cmp.not.i, label %sw.bb58.i.sw.bb64.i_crit_edge, label %if.then.i61

sw.bb58.i.sw.bb64.i_crit_edge:                    ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64.i

if.then.i61:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dbg_root.i, align 4
  %call63.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.141, i16 noundef zeroext 292, ptr noundef %101, ptr noundef %call, ptr noundef nonnull @qcom_pmic_model_array_ops) #6
  br label %sw.bb64.i

sw.bb64.i:                                        ; preds = %if.then.i61, %sw.bb58.i.sw.bb64.i_crit_edge, %if.end31.sw.bb64.i_crit_edge, %if.end31.sw.bb64.i_crit_edge73
  %foundry_id.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 16
  %102 = ptrtoint ptr %foundry_id.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %foundry_id.i, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103) #6
  %foundry_id66.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 5
  %105 = ptrtoint ptr %foundry_id66.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %foundry_id66.i, align 4
  %106 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.142, i16 noundef zeroext 292, ptr noundef %107, ptr noundef %foundry_id66.i) #6
  br label %sw.bb70.i

sw.bb70.i:                                        ; preds = %sw.bb64.i, %if.end31.sw.bb70.i_crit_edge, %if.end31.sw.bb70.i_crit_edge74
  %108 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dbg_root.i, align 4
  %call72.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.143, i16 noundef zeroext 292, ptr noundef %109, ptr noundef %call, ptr noundef nonnull @qcom_pmic_model_ops) #6
  %110 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dbg_root.i, align 4
  %call74.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.144, i16 noundef zeroext 292, ptr noundef %111, ptr noundef %call, ptr noundef nonnull @qcom_pmic_die_rev_ops) #6
  br label %sw.bb75.i

sw.bb75.i:                                        ; preds = %sw.bb70.i, %if.end31.sw.bb75.i_crit_edge
  %hw_plat_subtype.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 9
  %112 = ptrtoint ptr %hw_plat_subtype.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hw_plat_subtype.i, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #6
  %hw_plat_subtype77.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 1
  %115 = ptrtoint ptr %hw_plat_subtype77.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %hw_plat_subtype77.i, align 4
  %116 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.145, i16 noundef zeroext 292, ptr noundef %117, ptr noundef %hw_plat_subtype77.i) #6
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb75.i, %if.end31.sw.bb81.i_crit_edge
  %accessory_chip.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 8
  %118 = ptrtoint ptr %accessory_chip.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %accessory_chip.i, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119) #6
  %accessory_chip83.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 2
  %121 = ptrtoint ptr %accessory_chip83.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %accessory_chip83.i, align 4
  %122 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.146, i16 noundef zeroext 292, ptr noundef %123, ptr noundef %accessory_chip83.i) #6
  br label %sw.bb87.i

sw.bb87.i:                                        ; preds = %sw.bb81.i, %if.end31.sw.bb87.i_crit_edge
  %plat_ver.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 7
  %124 = ptrtoint ptr %plat_ver.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %plat_ver.i, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125) #6
  %plat_ver89.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 6
  %127 = ptrtoint ptr %plat_ver89.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %plat_ver89.i, align 4
  %128 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.147, i16 noundef zeroext 292, ptr noundef %129, ptr noundef %plat_ver89.i) #6
  br label %sw.bb93.i

sw.bb93.i:                                        ; preds = %sw.bb87.i, %if.end31.sw.bb93.i_crit_edge
  %hw_plat.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 6
  %130 = ptrtoint ptr %hw_plat.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hw_plat.i, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131) #6
  %hw_plat95.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 8
  %133 = ptrtoint ptr %hw_plat95.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %hw_plat95.i, align 4
  %134 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.148, i16 noundef zeroext 292, ptr noundef %135, ptr noundef %hw_plat95.i) #6
  br label %sw.bb99.i

sw.bb99.i:                                        ; preds = %sw.bb93.i, %if.end31.sw.bb99.i_crit_edge
  %raw_ver.i = getelementptr inbounds %struct.socinfo, ptr %call, i32 0, i32 5
  %136 = ptrtoint ptr %raw_ver.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %raw_ver.i, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137) #6
  %raw_ver101.i = getelementptr inbounds %struct.qcom_socinfo, ptr %call.i, i32 0, i32 3, i32 7
  %139 = ptrtoint ptr %raw_ver101.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %raw_ver101.i, align 4
  %140 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dbg_root.i, align 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.149, i16 noundef zeroext 292, ptr noundef %141, ptr noundef %raw_ver101.i) #6
  br label %sw.bb105.i

sw.bb105.i:                                       ; preds = %sw.bb99.i, %if.end31.sw.bb105.i_crit_edge
  %142 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dbg_root.i, align 4
  %call107.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.150, i16 noundef zeroext 292, ptr noundef %143, ptr noundef %call, ptr noundef nonnull @qcom_build_id_ops) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb105.i, %if.end31.sw.epilog.i_crit_edge
  %call108.i = call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 469, ptr noundef nonnull %size.i) #6
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.inc.i66.for.body.i62_crit_edge, %sw.epilog.i
  %i.0208.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i64, %for.inc.i66.for.body.i62_crit_edge ]
  %144 = lshr i32 1012, %i.0208.i
  %145 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.not.i = icmp eq i32 %145, 0
  br i1 %tobool.not.not.i, label %if.end111.i, label %for.body.i62.for.inc.i66_crit_edge

for.body.i62.for.inc.i66_crit_edge:               ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i66

if.end111.i:                                      ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i63 = getelementptr [15 x ptr], ptr @socinfo_image_names, i32 0, i32 %i.0208.i
  %146 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i63, align 4
  %148 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dbg_root.i, align 4
  %call114.i = call ptr @debugfs_create_dir(ptr noundef %147, ptr noundef %149) #6
  %arrayidx115.i = getelementptr %struct.smem_image_version, ptr %call108.i, i32 %i.0208.i
  %call116.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.151, i16 noundef zeroext 292, ptr noundef %call114.i, ptr noundef %arrayidx115.i, ptr noundef nonnull @qcom_image_name_ops) #6
  %call118.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.152, i16 noundef zeroext 292, ptr noundef %call114.i, ptr noundef %arrayidx115.i, ptr noundef nonnull @qcom_image_variant_ops) #6
  %call120.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.153, i16 noundef zeroext 292, ptr noundef %call114.i, ptr noundef %arrayidx115.i, ptr noundef nonnull @qcom_image_oem_ops) #6
  br label %for.inc.i66

for.inc.i66:                                      ; preds = %if.end111.i, %for.body.i62.for.inc.i66_crit_edge
  %inc.i64 = add nuw nsw i32 %i.0208.i, 1
  %exitcond.not.i65 = icmp eq i32 %inc.i64, 15
  br i1 %exitcond.not.i65, label %socinfo_debugfs_init.exit, label %for.inc.i66.for.body.i62_crit_edge

for.inc.i66.for.body.i62_crit_edge:               ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i62

socinfo_debugfs_init.exit:                        ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #6
  %150 = ptrtoint ptr %item_size to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %item_size, align 4
  call void @add_device_randomness(ptr noundef %call, i32 noundef %151) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %152 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %socinfo_debugfs_init.exit, %if.then28, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %26, %if.then28 ], [ 0, %socinfo_debugfs_init.exit ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %item_size) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_socinfo_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @soc_device_unregister(ptr noundef %3) #6
  %dbg_root.i = getelementptr inbounds %struct.qcom_socinfo, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_open_chip_id(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qcom_show_chip_id, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_show_chip_id(ptr noundef %seq, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %chip_id = getelementptr inbounds %struct.socinfo, ptr %1, i32 0, i32 24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.154, ptr noundef %chip_id) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_open_pmic_model_array(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qcom_show_pmic_model_array, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_show_pmic_model_array(ptr noundef %seq, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %num_pmics1 = getelementptr inbounds %struct.socinfo, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %num_pmics1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pmics1, align 4
  %pmic_array_offset2 = getelementptr inbounds %struct.socinfo, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %pmic_array_offset2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pmic_array_offset2, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr = getelementptr i8, ptr %1, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.not = icmp eq i32 %3, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %3)
  %umax = call i32 @llvm.umax.i32(i32 %7, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.027 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.027, 3
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %mul
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr4, align 1
  %10 = and i32 %9, -65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add = or i32 %mul, 4
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %add
  %12 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr7, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %11)
  %cmp9 = icmp ult i32 %11, 42
  br i1 %cmp9, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [42 x ptr], ptr @pmic_models, i32 0, i32 %11
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %14, 16
  %and12 = and i32 %14, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.155, ptr noundef nonnull %16, i32 noundef %shr, i32 noundef %and12) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.156, i32 noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_open_pmic_model(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qcom_show_pmic_model, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_show_pmic_model(ptr noundef %seq, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pmic_model = getelementptr inbounds %struct.socinfo, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pmic_model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmic_model, align 4
  %4 = and i32 %3, -65536
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %5)
  %cmp1 = icmp ult i32 %5, 42
  br i1 %cmp1, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr [42 x ptr], ptr @pmic_models, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.154, ptr noundef nonnull %7) #6
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.156, i32 noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_open_pmic_die_rev(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qcom_show_pmic_die_revision, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_show_pmic_die_revision(ptr noundef %seq, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pmic_die_rev = getelementptr inbounds %struct.socinfo, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pmic_die_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmic_die_rev, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr = lshr i32 %4, 16
  %and2 = and i32 %4, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.192, i32 noundef %shr, i32 noundef %and2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_open_build_id(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qcom_show_build_id, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_show_build_id(ptr noundef %seq, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %build_id = getelementptr inbounds %struct.socinfo, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.154, ptr noundef %build_id) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_image_name(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @show_image_name, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_image_name(ptr noundef %seq, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.154, ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_image_variant(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @show_image_variant, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_image_variant(ptr noundef %seq, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %variant = getelementptr inbounds %struct.smem_image_version, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %variant, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.154, ptr noundef %variant) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_image_oem(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @show_image_oem, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_image_oem(ptr noundef %seq, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %oem = getelementptr inbounds %struct.smem_image_version, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %oem to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oem, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.154, ptr noundef %oem) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432}
!llvm.module.flags = !{!434, !435, !436, !437, !438, !439, !440, !441}
!llvm.ident = !{!442}

!0 = !{ptr @__initcall__kmod_socinfo__223_672_qcom_socinfo_driver_init6, !1, !"__initcall__kmod_socinfo__223_672_qcom_socinfo_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/socinfo.c", i32 672, i32 1}
!2 = !{ptr @__exitcall_qcom_socinfo_driver_exit, !1, !"__exitcall_qcom_socinfo_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description224, !4, !"__UNIQUE_ID_description224", i1 false, i1 false}
!4 = !{!"../drivers/soc/qcom/socinfo.c", i32 674, i32 1}
!5 = !{ptr @__UNIQUE_ID_file225, !6, !"__UNIQUE_ID_file225", i1 false, i1 false}
!6 = !{!"../drivers/soc/qcom/socinfo.c", i32 675, i32 1}
!7 = !{ptr @__UNIQUE_ID_license226, !6, !"__UNIQUE_ID_license226", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias227, !9, !"__UNIQUE_ID_alias227", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/socinfo.c", i32 676, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/socinfo.c", i32 668, i32 11}
!12 = !{ptr @qcom_socinfo_driver, !13, !"qcom_socinfo_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/socinfo.c", i32 664, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/socinfo.c", i32 618, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qcom_socinfo_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @qcom_socinfo_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/qcom/socinfo.c", i32 626, i32 20}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/qcom/socinfo.c", i32 629, i32 59}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/qcom/socinfo.c", i32 631, i32 61}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/qcom/socinfo.c", i32 201, i32 8}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/qcom/socinfo.c", i32 202, i32 9}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/qcom/socinfo.c", i32 203, i32 9}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/qcom/socinfo.c", i32 204, i32 9}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/qcom/socinfo.c", i32 205, i32 9}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/qcom/socinfo.c", i32 206, i32 9}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/qcom/socinfo.c", i32 207, i32 9}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/qcom/socinfo.c", i32 208, i32 9}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/qcom/socinfo.c", i32 209, i32 9}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/qcom/socinfo.c", i32 210, i32 9}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/qcom/socinfo.c", i32 211, i32 9}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/socinfo.c", i32 212, i32 9}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/qcom/socinfo.c", i32 213, i32 9}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/qcom/socinfo.c", i32 214, i32 9}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/qcom/socinfo.c", i32 215, i32 9}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/qcom/socinfo.c", i32 216, i32 9}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/qcom/socinfo.c", i32 217, i32 9}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/qcom/socinfo.c", i32 218, i32 9}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/qcom/socinfo.c", i32 219, i32 9}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/qcom/socinfo.c", i32 220, i32 9}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/qcom/socinfo.c", i32 221, i32 9}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/qcom/socinfo.c", i32 222, i32 9}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/qcom/socinfo.c", i32 223, i32 9}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/soc/qcom/socinfo.c", i32 224, i32 9}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/soc/qcom/socinfo.c", i32 225, i32 9}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/soc/qcom/socinfo.c", i32 226, i32 9}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/soc/qcom/socinfo.c", i32 227, i32 9}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/soc/qcom/socinfo.c", i32 228, i32 9}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/soc/qcom/socinfo.c", i32 229, i32 9}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/soc/qcom/socinfo.c", i32 230, i32 9}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/qcom/socinfo.c", i32 231, i32 9}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/qcom/socinfo.c", i32 232, i32 9}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/qcom/socinfo.c", i32 233, i32 9}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/qcom/socinfo.c", i32 234, i32 9}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/qcom/socinfo.c", i32 235, i32 9}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/qcom/socinfo.c", i32 236, i32 9}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/soc/qcom/socinfo.c", i32 237, i32 9}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/soc/qcom/socinfo.c", i32 238, i32 9}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/soc/qcom/socinfo.c", i32 239, i32 9}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/soc/qcom/socinfo.c", i32 240, i32 9}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/soc/qcom/socinfo.c", i32 241, i32 9}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/soc/qcom/socinfo.c", i32 242, i32 9}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/soc/qcom/socinfo.c", i32 243, i32 9}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/soc/qcom/socinfo.c", i32 244, i32 9}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/soc/qcom/socinfo.c", i32 245, i32 9}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/soc/qcom/socinfo.c", i32 246, i32 9}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/soc/qcom/socinfo.c", i32 247, i32 9}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/soc/qcom/socinfo.c", i32 248, i32 9}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/soc/qcom/socinfo.c", i32 249, i32 9}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/soc/qcom/socinfo.c", i32 250, i32 9}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/soc/qcom/socinfo.c", i32 251, i32 9}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/soc/qcom/socinfo.c", i32 252, i32 9}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/soc/qcom/socinfo.c", i32 253, i32 9}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/soc/qcom/socinfo.c", i32 254, i32 9}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/soc/qcom/socinfo.c", i32 255, i32 9}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/soc/qcom/socinfo.c", i32 256, i32 9}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/soc/qcom/socinfo.c", i32 257, i32 9}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/soc/qcom/socinfo.c", i32 258, i32 9}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/soc/qcom/socinfo.c", i32 259, i32 9}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/soc/qcom/socinfo.c", i32 260, i32 9}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/soc/qcom/socinfo.c", i32 261, i32 9}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/soc/qcom/socinfo.c", i32 262, i32 9}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/soc/qcom/socinfo.c", i32 263, i32 9}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/soc/qcom/socinfo.c", i32 264, i32 9}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/soc/qcom/socinfo.c", i32 265, i32 9}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/soc/qcom/socinfo.c", i32 266, i32 9}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/soc/qcom/socinfo.c", i32 267, i32 9}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/soc/qcom/socinfo.c", i32 268, i32 9}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/soc/qcom/socinfo.c", i32 269, i32 9}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/soc/qcom/socinfo.c", i32 270, i32 9}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/soc/qcom/socinfo.c", i32 271, i32 9}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/soc/qcom/socinfo.c", i32 272, i32 9}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/soc/qcom/socinfo.c", i32 273, i32 9}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/soc/qcom/socinfo.c", i32 274, i32 9}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/soc/qcom/socinfo.c", i32 275, i32 9}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/soc/qcom/socinfo.c", i32 276, i32 9}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/soc/qcom/socinfo.c", i32 277, i32 9}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/soc/qcom/socinfo.c", i32 278, i32 9}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/soc/qcom/socinfo.c", i32 279, i32 9}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/soc/qcom/socinfo.c", i32 280, i32 9}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/soc/qcom/socinfo.c", i32 281, i32 9}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/soc/qcom/socinfo.c", i32 282, i32 9}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/soc/qcom/socinfo.c", i32 283, i32 9}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/soc/qcom/socinfo.c", i32 284, i32 9}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/soc/qcom/socinfo.c", i32 285, i32 9}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/soc/qcom/socinfo.c", i32 286, i32 9}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/soc/qcom/socinfo.c", i32 287, i32 9}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/soc/qcom/socinfo.c", i32 288, i32 9}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/soc/qcom/socinfo.c", i32 289, i32 9}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/soc/qcom/socinfo.c", i32 290, i32 9}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/soc/qcom/socinfo.c", i32 291, i32 9}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/soc/qcom/socinfo.c", i32 292, i32 9}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/soc/qcom/socinfo.c", i32 293, i32 9}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/soc/qcom/socinfo.c", i32 294, i32 9}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/soc/qcom/socinfo.c", i32 295, i32 9}
!218 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/soc/qcom/socinfo.c", i32 296, i32 9}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/soc/qcom/socinfo.c", i32 297, i32 9}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/soc/qcom/socinfo.c", i32 298, i32 9}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/soc/qcom/socinfo.c", i32 299, i32 9}
!226 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/soc/qcom/socinfo.c", i32 300, i32 9}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/soc/qcom/socinfo.c", i32 301, i32 9}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/soc/qcom/socinfo.c", i32 302, i32 9}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/soc/qcom/socinfo.c", i32 303, i32 9}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/soc/qcom/socinfo.c", i32 304, i32 9}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/soc/qcom/socinfo.c", i32 305, i32 9}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/soc/qcom/socinfo.c", i32 306, i32 9}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/soc/qcom/socinfo.c", i32 307, i32 9}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/soc/qcom/socinfo.c", i32 308, i32 9}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/soc/qcom/socinfo.c", i32 309, i32 9}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/soc/qcom/socinfo.c", i32 310, i32 9}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/soc/qcom/socinfo.c", i32 311, i32 9}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/soc/qcom/socinfo.c", i32 312, i32 9}
!252 = !{ptr @.str.121, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/soc/qcom/socinfo.c", i32 313, i32 9}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/soc/qcom/socinfo.c", i32 314, i32 9}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/soc/qcom/socinfo.c", i32 315, i32 9}
!258 = !{ptr @.str.124, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/soc/qcom/socinfo.c", i32 316, i32 9}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/soc/qcom/socinfo.c", i32 317, i32 9}
!262 = !{ptr @.str.126, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/soc/qcom/socinfo.c", i32 318, i32 9}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/soc/qcom/socinfo.c", i32 319, i32 9}
!266 = !{ptr @.str.128, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/soc/qcom/socinfo.c", i32 320, i32 9}
!268 = !{ptr @soc_id, !269, !"soc_id", i1 false, i1 false}
!269 = !{!"../drivers/soc/qcom/socinfo.c", i32 200, i32 28}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/soc/qcom/socinfo.c", i32 467, i32 46}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/soc/qcom/socinfo.c", i32 471, i32 21}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/soc/qcom/socinfo.c", i32 478, i32 22}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/soc/qcom/socinfo.c", i32 487, i32 22}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/soc/qcom/socinfo.c", i32 489, i32 22}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/soc/qcom/socinfo.c", i32 491, i32 22}
!282 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/soc/qcom/socinfo.c", i32 493, i32 22}
!284 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/soc/qcom/socinfo.c", i32 499, i32 22}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/soc/qcom/socinfo.c", i32 501, i32 3}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/soc/qcom/socinfo.c", i32 511, i32 22}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/soc/qcom/socinfo.c", i32 513, i32 22}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/soc/qcom/socinfo.c", i32 516, i32 22}
!294 = !{ptr @.str.141, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/soc/qcom/socinfo.c", i32 524, i32 4}
!296 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/soc/qcom/socinfo.c", i32 530, i32 22}
!298 = !{ptr @.str.143, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/soc/qcom/socinfo.c", i32 535, i32 3}
!300 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/soc/qcom/socinfo.c", i32 536, i32 3}
!302 = !{ptr @.str.145, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/soc/qcom/socinfo.c", i32 542, i32 22}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/soc/qcom/socinfo.c", i32 550, i32 22}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/soc/qcom/socinfo.c", i32 557, i32 22}
!308 = !{ptr @.str.148, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/soc/qcom/socinfo.c", i32 564, i32 22}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/soc/qcom/socinfo.c", i32 571, i32 22}
!312 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/soc/qcom/socinfo.c", i32 575, i32 3}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/soc/qcom/socinfo.c", i32 588, i32 23}
!316 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/soc/qcom/socinfo.c", i32 590, i32 23}
!318 = !{ptr @.str.153, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/soc/qcom/socinfo.c", i32 592, i32 23}
!320 = !{ptr @qcom_chip_id_ops, !321, !"qcom_chip_id_ops", i1 false, i1 false}
!321 = !{!"../drivers/soc/qcom/socinfo.c", i32 431, i32 1}
!322 = !{ptr @.str.154, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/soc/qcom/socinfo.c", i32 422, i32 18}
!324 = !{ptr @qcom_pmic_model_array_ops, !325, !"qcom_pmic_model_array_ops", i1 false, i1 false}
!325 = !{!"../drivers/soc/qcom/socinfo.c", i32 429, i32 1}
!326 = !{ptr @.str.155, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/soc/qcom/socinfo.c", i32 397, i32 20}
!328 = !{ptr @.str.156, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/soc/qcom/socinfo.c", i32 401, i32 20}
!330 = !{ptr @.str.157, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/soc/qcom/socinfo.c", i32 72, i32 9}
!332 = !{ptr @.str.158, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/soc/qcom/socinfo.c", i32 73, i32 9}
!334 = !{ptr @.str.159, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/soc/qcom/socinfo.c", i32 74, i32 9}
!336 = !{ptr @.str.160, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/soc/qcom/socinfo.c", i32 75, i32 9}
!338 = !{ptr @.str.161, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/soc/qcom/socinfo.c", i32 76, i32 9}
!340 = !{ptr @.str.162, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/soc/qcom/socinfo.c", i32 77, i32 9}
!342 = !{ptr @.str.163, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/soc/qcom/socinfo.c", i32 78, i32 9}
!344 = !{ptr @.str.164, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/soc/qcom/socinfo.c", i32 79, i32 9}
!346 = !{ptr @.str.165, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/soc/qcom/socinfo.c", i32 80, i32 9}
!348 = !{ptr @.str.166, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/soc/qcom/socinfo.c", i32 81, i32 9}
!350 = !{ptr @.str.167, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/soc/qcom/socinfo.c", i32 82, i32 9}
!352 = !{ptr @.str.168, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/soc/qcom/socinfo.c", i32 83, i32 9}
!354 = !{ptr @.str.169, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/soc/qcom/socinfo.c", i32 84, i32 9}
!356 = !{ptr @.str.170, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/soc/qcom/socinfo.c", i32 85, i32 9}
!358 = !{ptr @.str.171, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/soc/qcom/socinfo.c", i32 86, i32 9}
!360 = !{ptr @.str.172, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/soc/qcom/socinfo.c", i32 87, i32 9}
!362 = !{ptr @.str.173, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/soc/qcom/socinfo.c", i32 88, i32 9}
!364 = !{ptr @.str.174, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/soc/qcom/socinfo.c", i32 89, i32 9}
!366 = !{ptr @.str.175, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/soc/qcom/socinfo.c", i32 90, i32 9}
!368 = !{ptr @.str.176, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/soc/qcom/socinfo.c", i32 91, i32 9}
!370 = !{ptr @.str.177, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/soc/qcom/socinfo.c", i32 92, i32 9}
!372 = !{ptr @.str.178, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/soc/qcom/socinfo.c", i32 93, i32 9}
!374 = !{ptr @.str.179, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/soc/qcom/socinfo.c", i32 94, i32 9}
!376 = !{ptr @.str.180, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/soc/qcom/socinfo.c", i32 95, i32 9}
!378 = !{ptr @.str.181, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/soc/qcom/socinfo.c", i32 96, i32 9}
!380 = !{ptr @.str.182, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/soc/qcom/socinfo.c", i32 97, i32 9}
!382 = !{ptr @.str.183, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/soc/qcom/socinfo.c", i32 98, i32 9}
!384 = !{ptr @.str.184, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/soc/qcom/socinfo.c", i32 99, i32 9}
!386 = !{ptr @.str.185, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/soc/qcom/socinfo.c", i32 100, i32 9}
!388 = !{ptr @.str.186, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/soc/qcom/socinfo.c", i32 101, i32 9}
!390 = !{ptr @.str.187, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/soc/qcom/socinfo.c", i32 102, i32 9}
!392 = !{ptr @.str.188, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/soc/qcom/socinfo.c", i32 103, i32 9}
!394 = !{ptr @.str.189, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/soc/qcom/socinfo.c", i32 104, i32 9}
!396 = !{ptr @.str.190, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/soc/qcom/socinfo.c", i32 105, i32 9}
!398 = !{ptr @.str.191, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/soc/qcom/socinfo.c", i32 106, i32 9}
!400 = !{ptr @pmic_models, !401, !"pmic_models", i1 false, i1 false}
!401 = !{!"../drivers/soc/qcom/socinfo.c", i32 71, i32 26}
!402 = !{ptr @qcom_pmic_model_ops, !403, !"qcom_pmic_model_ops", i1 false, i1 false}
!403 = !{!"../drivers/soc/qcom/socinfo.c", i32 428, i32 1}
!404 = !{ptr @qcom_pmic_die_rev_ops, !405, !"qcom_pmic_die_rev_ops", i1 false, i1 false}
!405 = !{!"../drivers/soc/qcom/socinfo.c", i32 430, i32 1}
!406 = !{ptr @.str.192, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/soc/qcom/socinfo.c", i32 411, i32 18}
!408 = !{ptr @qcom_build_id_ops, !409, !"qcom_build_id_ops", i1 false, i1 false}
!409 = !{!"../drivers/soc/qcom/socinfo.c", i32 427, i32 1}
!410 = !{ptr @.str.193, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/soc/qcom/socinfo.c", i32 63, i32 34}
!412 = !{ptr @.str.194, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/soc/qcom/socinfo.c", i32 67, i32 32}
!414 = !{ptr @.str.195, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/soc/qcom/socinfo.c", i32 66, i32 33}
!416 = !{ptr @.str.196, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/soc/qcom/socinfo.c", i32 62, i32 34}
!418 = !{ptr @.str.197, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/soc/qcom/socinfo.c", i32 65, i32 34}
!420 = !{ptr @.str.198, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/soc/qcom/socinfo.c", i32 61, i32 34}
!422 = !{ptr @.str.199, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/soc/qcom/socinfo.c", i32 64, i32 34}
!424 = !{ptr @.str.200, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/soc/qcom/socinfo.c", i32 68, i32 35}
!426 = !{ptr @socinfo_image_names, !427, !"socinfo_image_names", i1 false, i1 false}
!427 = !{!"../drivers/soc/qcom/socinfo.c", i32 60, i32 26}
!428 = !{ptr @qcom_image_name_ops, !429, !"qcom_image_name_ops", i1 false, i1 false}
!429 = !{!"../drivers/soc/qcom/socinfo.c", i32 453, i32 1}
!430 = !{ptr @qcom_image_variant_ops, !431, !"qcom_image_variant_ops", i1 false, i1 false}
!431 = !{!"../drivers/soc/qcom/socinfo.c", i32 454, i32 1}
!432 = !{ptr @qcom_image_oem_ops, !433, !"qcom_image_oem_ops", i1 false, i1 false}
!433 = !{!"../drivers/soc/qcom/socinfo.c", i32 455, i32 1}
!434 = !{i32 1, !"wchar_size", i32 2}
!435 = !{i32 1, !"min_enum_size", i32 4}
!436 = !{i32 8, !"branch-target-enforcement", i32 0}
!437 = !{i32 8, !"sign-return-address", i32 0}
!438 = !{i32 8, !"sign-return-address-all", i32 0}
!439 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!440 = !{i32 7, !"uwtable", i32 1}
!441 = !{i32 7, !"frame-pointer", i32 2}
!442 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!443 = !{!"auto-init"}
