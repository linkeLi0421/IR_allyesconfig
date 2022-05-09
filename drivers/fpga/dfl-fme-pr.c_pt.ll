; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-fme-pr.c_pt.bc'
source_filename = "../drivers/fpga/dfl-fme-pr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dfl_feature_id = type { i16 }
%struct.dfl_feature_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dfl_fme_region_pdata = type { ptr, ptr, i32 }
%struct.dfl_fme_br_pdata = type { ptr, i32 }
%struct.dfl_fme_mgr_pdata = type { ptr }
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
%struct.dfl_feature_platform_data = type { %struct.list_head, %struct.mutex, %struct.cdev, ptr, ptr, i32, i32, i8, i32, ptr, i32, [0 x %struct.dfl_feature] }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.dfl_feature = type { ptr, i16, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.dfl_fme = type { ptr, %struct.list_head, %struct.list_head, ptr }
%struct.dfl_fme_bridge = type { ptr, %struct.list_head }
%struct.dfl_fme_region = type { ptr, %struct.list_head, i32 }
%struct.dfl_fpga_fme_port_pr = type { i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fpga_region = type { %struct.device, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.fpga_image_info = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr }

@fme_pr_mgmt_id_table = dso_local constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 5 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@fme_pr_mgmt_ops = dso_local constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @pr_mgmt_init, ptr @pr_mgmt_uinit, ptr @fme_pr_ioctl }, [20 x i8] zeroinitializer }, align 32
@pr_mgmt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 394, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail to create fpga mgr pdev\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pr_mgmt_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/fpga/dfl-fme-pr.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pr_mgmt_init._entry_ptr = internal global ptr @pr_mgmt_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/fpga/dfl.h\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfl-fme-mgr\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfl-fme-bridge\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfl-fme-region\00", [17 x i8] zeroinitializer }, align 32
@fme_pr.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl_fme\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fme_pr\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"port number more than maximum\0A\00", [33 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"fme_pr_mgmt_id_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 469, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"fme_pr_mgmt_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 474, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 394, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"../drivers/fpga/dfl.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 392, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 189, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 244, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 321, i32 45 }
@___asan_gen_.58 = private constant [29 x i8] c"../drivers/fpga/dfl-fme-pr.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 96, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 230, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 214, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 156, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @pr_mgmt_init._entry, ptr @pr_mgmt_init._entry_ptr, ptr @fme_pr_mgmt_id_table, ptr @fme_pr_mgmt_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_pr_mgmt_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_pr_mgmt_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_mgmt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pr_mgmt_init(ptr noundef %pdev, ptr nocapture noundef readonly %feature) #0 align 64 {
entry:
  %region_pdata.i = alloca %struct.dfl_fme_region_pdata, align 4
  %br_pdata.i = alloca %struct.dfl_fme_br_pdata, align 4
  %mgr_pdata.i = alloca %struct.dfl_fme_mgr_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %region_list = getelementptr inbounds %struct.dfl_fme, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %region_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %region_list, ptr %region_list, align 4
  %prev.i = getelementptr inbounds %struct.dfl_fme, ptr %9, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %region_list, ptr %prev.i, align 4
  %bridge_list = getelementptr inbounds %struct.dfl_fme, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %bridge_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %bridge_list, ptr %bridge_list, align 4
  %prev.i81 = getelementptr inbounds %struct.dfl_fme, ptr %9, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bridge_list, ptr %prev.i81, align 4
  %dev.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mgr_pdata.i) #7
  %ioaddr.i82 = getelementptr inbounds %struct.dfl_feature, ptr %feature, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i82 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i82, align 4
  %tobool.not.i83 = icmp eq ptr %17, null
  br i1 %tobool.not.i83, label %dfl_get_feature_ioaddr_by_id.exit.dfl_fme_create_mgr.exit.thread_crit_edge, label %if.end.i

dfl_get_feature_ioaddr_by_id.exit.dfl_fme_create_mgr.exit.thread_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_create_mgr.exit.thread

if.end.i:                                         ; preds = %dfl_get_feature_ioaddr_by_id.exit
  %18 = ptrtoint ptr %mgr_pdata.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %mgr_pdata.i, align 4
  %id.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 4
  %call3.i = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.6, i32 noundef %20) #7
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.dfl_fme_create_mgr.exit.thread_crit_edge, label %if.end7.i

if.end.i.dfl_fme_create_mgr.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_create_mgr.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %dev8.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %call3.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev8.i, ptr %parent.i, align 8
  %call10.i = call i32 @platform_device_add_data(ptr noundef nonnull %call3.i, ptr noundef nonnull %mgr_pdata.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end7.i.create_mgr_err.i_crit_edge

if.end7.i.create_mgr_err.i_crit_edge:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_mgr_err.i

if.end13.i:                                       ; preds = %if.end7.i
  %call14.i = call i32 @platform_device_add(ptr noundef nonnull %call3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.dfl_fme_create_mgr.exit_crit_edge, label %if.end13.i.create_mgr_err.i_crit_edge

if.end13.i.create_mgr_err.i_crit_edge:            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_mgr_err.i

if.end13.i.dfl_fme_create_mgr.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_create_mgr.exit

create_mgr_err.i:                                 ; preds = %if.end13.i.create_mgr_err.i_crit_edge, %if.end7.i.create_mgr_err.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i, %if.end7.i.create_mgr_err.i_crit_edge ], [ %call14.i, %if.end13.i.create_mgr_err.i_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call3.i) #7
  %22 = inttoptr i32 %ret.0.i to ptr
  br label %dfl_fme_create_mgr.exit

dfl_fme_create_mgr.exit.thread:                   ; preds = %if.end.i.dfl_fme_create_mgr.exit.thread_crit_edge, %dfl_get_feature_ioaddr_by_id.exit.dfl_fme_create_mgr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mgr_pdata.i) #7
  br label %do.end

dfl_fme_create_mgr.exit:                          ; preds = %create_mgr_err.i, %if.end13.i.dfl_fme_create_mgr.exit_crit_edge
  %retval.0.i84 = phi ptr [ %22, %create_mgr_err.i ], [ %call3.i, %if.end13.i.dfl_fme_create_mgr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mgr_pdata.i) #7
  %cmp.i = icmp ugt ptr %retval.0.i84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dfl_fme_create_mgr.exit.do.end_crit_edge, label %if.end

dfl_fme_create_mgr.exit.do.end_crit_edge:         ; preds = %dfl_fme_create_mgr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dfl_fme_create_mgr.exit.do.end_crit_edge, %dfl_fme_create_mgr.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %dfl_fme_create_mgr.exit
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i84, ptr %9, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 48
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 52
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %26 = lshr i32 %24, 9
  %27 = and i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp132.not = icmp eq i32 %27, 0
  br i1 %cmp132.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %28 = getelementptr inbounds %struct.dfl_fme_br_pdata, ptr %br_pdata.i, i32 0, i32 1
  %dfl_cdev.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 4
  %29 = getelementptr inbounds %struct.dfl_fme_region_pdata, ptr %region_pdata.i, i32 0, i32 2
  %30 = getelementptr inbounds %struct.dfl_fme_region_pdata, ptr %region_pdata.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.0133, 3
  %add = add nuw nsw i32 %mul, 56
  %add.ptr25 = getelementptr i8, ptr %retval.0.i, i32 %add
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %add.ptr.i85 = getelementptr i32, ptr %add.ptr25, i32 1
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %33 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end29

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end29:                                         ; preds = %for.body
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %br_pdata.i) #7
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev2.i, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i86 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i86, label %if.end29.dfl_fme_create_bridge.exit.thread_crit_edge, label %if.end.i87

if.end29.dfl_fme_create_bridge.exit.thread_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_create_bridge.exit.thread

if.end.i87:                                       ; preds = %if.end29
  %36 = ptrtoint ptr %dfl_cdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dfl_cdev.i, align 4
  %38 = ptrtoint ptr %br_pdata.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %br_pdata.i, align 4
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0133, ptr %28, align 4
  %call5.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str.7, i32 noundef -2) #7
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i, ptr %call.i.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end.i87.dfl_fme_create_bridge.exit.thread_crit_edge, label %if.end10.i

if.end.i87.dfl_fme_create_bridge.exit.thread_crit_edge: ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_create_bridge.exit.thread

if.end10.i:                                       ; preds = %if.end.i87
  %parent.i88 = getelementptr inbounds %struct.platform_device, ptr %call5.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %parent.i88 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev2.i, ptr %parent.i88, align 8
  %call14.i89 = call i32 @platform_device_add_data(ptr noundef nonnull %call5.i, ptr noundef nonnull %br_pdata.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i89)
  %tobool15.not.i90 = icmp eq i32 %call14.i89, 0
  br i1 %tobool15.not.i90, label %if.end17.i, label %if.end10.i.create_br_err.i_crit_edge

if.end10.i.create_br_err.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_br_err.i

if.end17.i:                                       ; preds = %if.end10.i
  %call19.i = call i32 @platform_device_add(ptr noundef nonnull %call5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.dfl_fme_create_bridge.exit_crit_edge, label %if.end17.i.create_br_err.i_crit_edge

if.end17.i.create_br_err.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_br_err.i

if.end17.i.dfl_fme_create_bridge.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_create_bridge.exit

create_br_err.i:                                  ; preds = %if.end17.i.create_br_err.i_crit_edge, %if.end10.i.create_br_err.i_crit_edge
  %ret.0.i91 = phi i32 [ %call14.i89, %if.end10.i.create_br_err.i_crit_edge ], [ %call19.i, %if.end17.i.create_br_err.i_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call5.i) #7
  %42 = inttoptr i32 %ret.0.i91 to ptr
  br label %dfl_fme_create_bridge.exit

dfl_fme_create_bridge.exit.thread:                ; preds = %if.end.i87.dfl_fme_create_bridge.exit.thread_crit_edge, %if.end29.dfl_fme_create_bridge.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %br_pdata.i) #7
  br label %destroy_region

dfl_fme_create_bridge.exit:                       ; preds = %create_br_err.i, %if.end17.i.dfl_fme_create_bridge.exit_crit_edge
  %retval.0.i92 = phi ptr [ %42, %create_br_err.i ], [ %call.i.i, %if.end17.i.dfl_fme_create_bridge.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %br_pdata.i) #7
  %cmp.i93 = icmp ugt ptr %retval.0.i92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %dfl_fme_create_bridge.exit.destroy_region_crit_edge, label %if.end34

dfl_fme_create_bridge.exit.destroy_region_crit_edge: ; preds = %dfl_fme_create_bridge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_region

if.end34:                                         ; preds = %dfl_fme_create_bridge.exit
  %node = getelementptr inbounds %struct.dfl_fme_bridge, ptr %retval.0.i92, i32 0, i32 1
  %43 = ptrtoint ptr %bridge_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bridge_list, align 4
  %call.i.i94 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %bridge_list, ptr noundef %44) #7
  br i1 %call.i.i94, label %if.end.i.i, label %if.end34.list_add.exit_crit_edge

if.end34.list_add.exit_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %node, ptr %prev1.i.i, align 4
  %46 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dfl_fme_bridge, ptr %retval.0.i92, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bridge_list, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %bridge_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %node, ptr %bridge_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end34.list_add.exit_crit_edge
  %49 = ptrtoint ptr %retval.0.i92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %retval.0.i92, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %region_pdata.i) #7
  %51 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %29, align 4, !annotation !45
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %dev2.i96 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %call.i.i97 = call noalias ptr @devm_kmalloc(ptr noundef %dev2.i96, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not.i98 = icmp eq ptr %call.i.i97, null
  br i1 %tobool.not.i98, label %list_add.exit.dfl_fme_create_region.exit.thread_crit_edge, label %if.end.i100

list_add.exit.dfl_fme_create_region.exit.thread_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_create_region.exit.thread

if.end.i100:                                      ; preds = %list_add.exit
  %54 = ptrtoint ptr %region_pdata.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i84, ptr %region_pdata.i, align 4
  %55 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %50, ptr %30, align 4
  %id.i99 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 1
  %56 = ptrtoint ptr %id.i99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i99, align 4
  %call6.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str.8, i32 noundef %57) #7
  %58 = ptrtoint ptr %call.i.i97 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call6.i, ptr %call.i.i97, align 4
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %if.end.i100.dfl_fme_create_region.exit.thread_crit_edge, label %if.end11.i

if.end.i100.dfl_fme_create_region.exit.thread_crit_edge: ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_create_region.exit.thread

if.end11.i:                                       ; preds = %if.end.i100
  %parent.i101 = getelementptr inbounds %struct.platform_device, ptr %call6.i, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %parent.i101 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dev2.i96, ptr %parent.i101, align 8
  %call15.i = call i32 @platform_device_add_data(ptr noundef nonnull %call6.i, ptr noundef nonnull %region_pdata.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end11.i.create_region_err.i_crit_edge

if.end11.i.create_region_err.i_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_region_err.i

if.end18.i:                                       ; preds = %if.end11.i
  %call20.i = call i32 @platform_device_add(ptr noundef nonnull %call6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end18.i.create_region_err.i_crit_edge

if.end18.i.create_region_err.i_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_region_err.i

if.end23.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_id24.i = getelementptr inbounds %struct.dfl_fme_region, ptr %call.i.i97, i32 0, i32 2
  %60 = ptrtoint ptr %port_id24.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %i.0133, ptr %port_id24.i, align 4
  br label %dfl_fme_create_region.exit

create_region_err.i:                              ; preds = %if.end18.i.create_region_err.i_crit_edge, %if.end11.i.create_region_err.i_crit_edge
  %ret.0.i102 = phi i32 [ %call15.i, %if.end11.i.create_region_err.i_crit_edge ], [ %call20.i, %if.end18.i.create_region_err.i_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call6.i) #7
  %61 = inttoptr i32 %ret.0.i102 to ptr
  br label %dfl_fme_create_region.exit

dfl_fme_create_region.exit.thread:                ; preds = %if.end.i100.dfl_fme_create_region.exit.thread_crit_edge, %list_add.exit.dfl_fme_create_region.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %region_pdata.i) #7
  br label %destroy_region

dfl_fme_create_region.exit:                       ; preds = %create_region_err.i, %if.end23.i
  %retval.0.i103 = phi ptr [ %61, %create_region_err.i ], [ %call.i.i97, %if.end23.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %region_pdata.i) #7
  %cmp.i104 = icmp ugt ptr %retval.0.i103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %dfl_fme_create_region.exit.destroy_region_crit_edge, label %if.end40

dfl_fme_create_region.exit.destroy_region_crit_edge: ; preds = %dfl_fme_create_region.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_region

if.end40:                                         ; preds = %dfl_fme_create_region.exit
  %node41 = getelementptr inbounds %struct.dfl_fme_region, ptr %retval.0.i103, i32 0, i32 1
  %62 = ptrtoint ptr %region_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %region_list, align 4
  %call.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %node41, ptr noundef %region_list, ptr noundef %63) #7
  br i1 %call.i.i105, label %if.end.i.i108, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i108:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i106 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i106 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %node41, ptr %prev1.i.i106, align 4
  %65 = ptrtoint ptr %node41 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %node41, align 4
  %prev3.i.i107 = getelementptr inbounds %struct.dfl_fme_region, ptr %retval.0.i103, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev3.i.i107 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %region_list, ptr %prev3.i.i107, align 4
  %67 = ptrtoint ptr %region_list to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %node41, ptr %region_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i108, %if.end40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

destroy_region:                                   ; preds = %dfl_fme_create_region.exit.destroy_region_crit_edge, %dfl_fme_create_region.exit.thread, %dfl_fme_create_bridge.exit.destroy_region_crit_edge, %dfl_fme_create_bridge.exit.thread
  %ret.0.in = phi ptr [ inttoptr (i32 -12 to ptr), %dfl_fme_create_bridge.exit.thread ], [ inttoptr (i32 -12 to ptr), %dfl_fme_create_region.exit.thread ], [ %retval.0.i103, %dfl_fme_create_region.exit.destroy_region_crit_edge ], [ %retval.0.i92, %dfl_fme_create_bridge.exit.destroy_region_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %68 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %private.i, align 4
  %region_list.i = getelementptr inbounds %struct.dfl_fme, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %region_list.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %region_list.i, align 4
  %cmp.not20.i = icmp eq ptr %71, %region_list.i
  br i1 %cmp.not20.i, label %destroy_region.dfl_fme_destroy_regions.exit_crit_edge, label %destroy_region.for.body.i_crit_edge

destroy_region.for.body.i_crit_edge:              ; preds = %destroy_region
  br label %for.body.i

destroy_region.dfl_fme_destroy_regions.exit_crit_edge: ; preds = %destroy_region
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_destroy_regions.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %destroy_region.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %71, %destroy_region.for.body.i_crit_edge ]
  %fme_region.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -4
  %72 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i, align 4
  %75 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %79 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %fme_region.0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fme_region.0.i, align 4
  call void @platform_device_unregister(ptr noundef %82) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %region_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.dfl_fme_destroy_regions.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.dfl_fme_destroy_regions.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_destroy_regions.exit

dfl_fme_destroy_regions.exit:                     ; preds = %list_del.exit.i.dfl_fme_destroy_regions.exit_crit_edge, %destroy_region.dfl_fme_destroy_regions.exit_crit_edge
  %83 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %private.i, align 4
  %bridge_list.i = getelementptr inbounds %struct.dfl_fme, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %bridge_list.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bridge_list.i, align 4
  %cmp.not20.i111 = icmp eq ptr %86, %bridge_list.i
  br i1 %cmp.not20.i111, label %dfl_fme_destroy_regions.exit.dfl_fme_destroy_bridges.exit_crit_edge, label %dfl_fme_destroy_regions.exit.for.body.i115_crit_edge

dfl_fme_destroy_regions.exit.for.body.i115_crit_edge: ; preds = %dfl_fme_destroy_regions.exit
  br label %for.body.i115

dfl_fme_destroy_regions.exit.dfl_fme_destroy_bridges.exit_crit_edge: ; preds = %dfl_fme_destroy_regions.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_destroy_bridges.exit

for.body.i115:                                    ; preds = %list_del.exit.i121.for.body.i115_crit_edge, %dfl_fme_destroy_regions.exit.for.body.i115_crit_edge
  %.pn.in21.i112 = phi ptr [ %.pn.i113, %list_del.exit.i121.for.body.i115_crit_edge ], [ %86, %dfl_fme_destroy_regions.exit.for.body.i115_crit_edge ]
  %fbridge.0.i = getelementptr i8, ptr %.pn.in21.i112, i32 -4
  %87 = ptrtoint ptr %.pn.in21.i112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn.i113 = load ptr, ptr %.pn.in21.i112, align 4
  %call.i.i.i114 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i112) #7
  br i1 %call.i.i.i114, label %if.end.i.i.i118, label %for.body.i115.list_del.exit.i121_crit_edge

for.body.i115.list_del.exit.i121_crit_edge:       ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i121

if.end.i.i.i118:                                  ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i112, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i.i116, align 4
  %90 = ptrtoint ptr %.pn.in21.i112 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %.pn.in21.i112, align 4
  %prev1.i.i.i.i117 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i.i117, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %list_del.exit.i121

list_del.exit.i121:                               ; preds = %if.end.i.i.i118, %for.body.i115.list_del.exit.i121_crit_edge
  %94 = ptrtoint ptr %.pn.in21.i112 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i112, align 4
  %prev.i.i119 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i112, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i119, align 4
  %96 = ptrtoint ptr %fbridge.0.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fbridge.0.i, align 4
  call void @platform_device_unregister(ptr noundef %97) #7
  %cmp.not.i120 = icmp eq ptr %.pn.i113, %bridge_list.i
  br i1 %cmp.not.i120, label %list_del.exit.i121.dfl_fme_destroy_bridges.exit_crit_edge, label %list_del.exit.i121.for.body.i115_crit_edge

list_del.exit.i121.for.body.i115_crit_edge:       ; preds = %list_del.exit.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i115

list_del.exit.i121.dfl_fme_destroy_bridges.exit_crit_edge: ; preds = %list_del.exit.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_destroy_bridges.exit

dfl_fme_destroy_bridges.exit:                     ; preds = %list_del.exit.i121.dfl_fme_destroy_bridges.exit_crit_edge, %dfl_fme_destroy_regions.exit.dfl_fme_destroy_bridges.exit_crit_edge
  %98 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %private.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  call void @platform_device_unregister(ptr noundef %101) #7
  br label %cleanup

cleanup:                                          ; preds = %dfl_fme_destroy_bridges.exit, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -19, %do.end ], [ %ret.0, %dfl_fme_destroy_bridges.exit ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pr_mgmt_uinit(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readnone %feature) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %private.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i, align 4
  %region_list.i = getelementptr inbounds %struct.dfl_fme, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %region_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region_list.i, align 4
  %cmp.not20.i = icmp eq ptr %5, %region_list.i
  br i1 %cmp.not20.i, label %entry.dfl_fme_destroy_regions.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dfl_fme_destroy_regions.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_destroy_regions.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %5, %entry.for.body.i_crit_edge ]
  %fme_region.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -4
  %6 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %fme_region.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fme_region.0.i, align 4
  tail call void @platform_device_unregister(ptr noundef %16) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %region_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.dfl_fme_destroy_regions.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.dfl_fme_destroy_regions.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_destroy_regions.exit

dfl_fme_destroy_regions.exit:                     ; preds = %list_del.exit.i.dfl_fme_destroy_regions.exit_crit_edge, %entry.dfl_fme_destroy_regions.exit_crit_edge
  %17 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i.i, align 4
  %bridge_list.i = getelementptr inbounds %struct.dfl_fme, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bridge_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bridge_list.i, align 4
  %cmp.not20.i7 = icmp eq ptr %20, %bridge_list.i
  br i1 %cmp.not20.i7, label %dfl_fme_destroy_regions.exit.dfl_fme_destroy_bridges.exit_crit_edge, label %dfl_fme_destroy_regions.exit.for.body.i11_crit_edge

dfl_fme_destroy_regions.exit.for.body.i11_crit_edge: ; preds = %dfl_fme_destroy_regions.exit
  br label %for.body.i11

dfl_fme_destroy_regions.exit.dfl_fme_destroy_bridges.exit_crit_edge: ; preds = %dfl_fme_destroy_regions.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_destroy_bridges.exit

for.body.i11:                                     ; preds = %list_del.exit.i17.for.body.i11_crit_edge, %dfl_fme_destroy_regions.exit.for.body.i11_crit_edge
  %.pn.in21.i8 = phi ptr [ %.pn.i9, %list_del.exit.i17.for.body.i11_crit_edge ], [ %20, %dfl_fme_destroy_regions.exit.for.body.i11_crit_edge ]
  %fbridge.0.i = getelementptr i8, ptr %.pn.in21.i8, i32 -4
  %21 = ptrtoint ptr %.pn.in21.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i9 = load ptr, ptr %.pn.in21.i8, align 4
  %call.i.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i8) #7
  br i1 %call.i.i.i10, label %if.end.i.i.i14, label %for.body.i11.list_del.exit.i17_crit_edge

for.body.i11.list_del.exit.i17_crit_edge:         ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i17

if.end.i.i.i14:                                   ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i8, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i12, align 4
  %24 = ptrtoint ptr %.pn.in21.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in21.i8, align 4
  %prev1.i.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i13, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i17

list_del.exit.i17:                                ; preds = %if.end.i.i.i14, %for.body.i11.list_del.exit.i17_crit_edge
  %28 = ptrtoint ptr %.pn.in21.i8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i8, align 4
  %prev.i.i15 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i8, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i15, align 4
  %30 = ptrtoint ptr %fbridge.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fbridge.0.i, align 4
  tail call void @platform_device_unregister(ptr noundef %31) #7
  %cmp.not.i16 = icmp eq ptr %.pn.i9, %bridge_list.i
  br i1 %cmp.not.i16, label %list_del.exit.i17.dfl_fme_destroy_bridges.exit_crit_edge, label %list_del.exit.i17.for.body.i11_crit_edge

list_del.exit.i17.for.body.i11_crit_edge:         ; preds = %list_del.exit.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i11

list_del.exit.i17.dfl_fme_destroy_bridges.exit_crit_edge: ; preds = %list_del.exit.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_fme_destroy_bridges.exit

dfl_fme_destroy_bridges.exit:                     ; preds = %list_del.exit.i17.dfl_fme_destroy_bridges.exit_crit_edge, %dfl_fme_destroy_regions.exit.dfl_fme_destroy_bridges.exit_crit_edge
  %32 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void @platform_device_unregister(ptr noundef %35) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_pr_ioctl(ptr noundef %pdev, ptr nocapture noundef readnone %feature, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 46720, i32 %cmd)
  %cond = icmp eq i32 %cmd, 46720
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @fme_pr(ptr noundef %pdev, i32 noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call, %sw.bb ], [ -19, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fme_pr(ptr noundef %pdev, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  %port_pr = alloca %struct.dfl_fpga_fme_port_pr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %port_pr) #7
  %3 = getelementptr inbounds %struct.dfl_fpga_fme_port_pr, ptr %port_pr, i32 0, i32 1
  %4 = getelementptr inbounds %struct.dfl_fpga_fme_port_pr, ptr %port_pr, i32 0, i32 2
  %5 = getelementptr inbounds %struct.dfl_fpga_fme_port_pr, ptr %port_pr, i32 0, i32 3
  %6 = getelementptr inbounds %struct.dfl_fpga_fme_port_pr, ptr %port_pr, i32 0, i32 4
  %7 = call ptr @memset(ptr %port_pr, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #11, !srcloc !46
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !47

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %port_pr, i32 noundef 24) #7
  %9 = call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !48
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %port_pr, ptr noundef %2, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #7, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !47

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i133 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i133
  %add.ptr.i.i = getelementptr i8, ptr %port_pr, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i133)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %13 = ptrtoint ptr %port_pr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_pr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %14)
  %cmp = icmp ult i32 %14, 24
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not = icmp eq i32 %16, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %18, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i127 = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %20
  %cmp1.i.i128 = icmp ult ptr %features.i.i, %add.ptr.i.i127
  br i1 %cmp1.i.i128, label %if.end4.for.body.i.i_crit_edge, label %if.end4.do.end.i_crit_edge

if.end4.do.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end4.for.body.i.i_crit_edge:                   ; preds = %if.end4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end4.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end4.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %22)
  %cmp5.i.i = icmp eq i16 %22, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i129 = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i127
  br i1 %cmp.i.i129, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end4.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i130 = phi ptr [ null, %do.end.i ], [ %24, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i130, i32 48
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %add.ptr.i = getelementptr i8, ptr %retval.0.i130, i32 52
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %4, align 8
  %29 = lshr i32 %25, 9
  %30 = and i32 %29, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp20.not = icmp ugt i32 %30, %28
  br i1 %cmp20.not, label %if.end34, label %do.body23

do.body23:                                        ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_pr.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_pr, %if.then29)) #7
          to label %cleanup [label %if.then29], !srcloc !51

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_pr.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end34:                                         ; preds = %dfl_get_feature_ioaddr_by_id.exit
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %5, align 4
  %add = add i32 %32, 3
  %and35 = and i32 %add, -4
  %call36 = call noalias ptr @vmalloc(i32 noundef %and35) #12
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %6, align 8
  %conv40 = trunc i64 %34 to i32
  %35 = inttoptr i32 %conv40 to ptr
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp9.i.i = icmp slt i32 %37, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end39
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.free_exit_crit_edge, label %if.then27.i.i, !prof !47

land.rhs16.i.i.free_exit_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %free_exit

if.then.i.i.i:                                    ; preds = %if.end39
  call void @__check_object_size(ptr noundef nonnull %call36, i32 noundef %37, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #7
  %call.i.i108 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i108, label %if.then.i.i.i.if.end.i.i121_crit_edge, label %land.lhs.true.i.i111

if.then.i.i.i.if.end.i.i121_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i121

land.lhs.true.i.i111:                             ; preds = %if.then.i.i.i
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 %37, i32 -1226833920) #11, !srcloc !46
  %asmresult.i.i109 = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i109)
  %cmp.i6.i110 = icmp eq i32 %asmresult.i.i109, 0
  br i1 %cmp.i6.i110, label %if.then.i7.i118, label %land.lhs.true.i.i111.if.end.i.i121_crit_edge, !prof !47

land.lhs.true.i.i111.if.end.i.i121_crit_edge:     ; preds = %land.lhs.true.i.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i121

if.then.i7.i118:                                  ; preds = %land.lhs.true.i.i111
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call36, i32 noundef %37) #7
  %39 = call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i.i.i.i.i.i113 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i113 to ptr
  %cpu_domain.i.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i114) #5, !srcloc !48
  %and.i.i.i.i115 = and i32 %41, -13
  %or.i.i.i.i116 = or i32 %and.i.i.i.i115, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i116) #7, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %call1.i.i.i117 = call i32 @arm_copy_from_user(ptr noundef nonnull %call36, ptr noundef %35, i32 noundef %37) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #7, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  br label %if.end.i.i121

if.end.i.i121:                                    ; preds = %if.then.i7.i118, %land.lhs.true.i.i111.if.end.i.i121_crit_edge, %if.then.i.i.i.if.end.i.i121_crit_edge
  %res.0.i.i119 = phi i32 [ %37, %if.then.i.i.i.if.end.i.i121_crit_edge ], [ %call1.i.i.i117, %if.then.i7.i118 ], [ %37, %land.lhs.true.i.i111.if.end.i.i121_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i119)
  %tobool4.not.i.i120 = icmp eq i32 %res.0.i.i119, 0
  br i1 %tobool4.not.i.i120, label %if.end45, label %if.then11.i.i124, !prof !47

if.then11.i.i124:                                 ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i122 = sub i32 %37, %res.0.i.i119
  %add.ptr.i.i123 = getelementptr i8, ptr %call36, i32 %sub.i.i122
  %42 = call ptr @memset(ptr %add.ptr.i.i123, i32 0, i32 %res.0.i.i119)
  br label %free_exit

if.end45:                                         ; preds = %if.end.i.i121
  %call47 = call ptr @fpga_image_info_alloc(ptr noundef %dev) #7
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end45.free_exit_crit_edge, label %if.end50

if.end45.free_exit_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_exit

if.end50:                                         ; preds = %if.end45
  %43 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call47, align 4
  %or = or i32 %44, 1
  store i32 %or, ptr %call47, align 4
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private.i, align 4
  %tobool53.not = icmp eq ptr %46, null
  br i1 %tobool53.not, label %if.end50.unlock_exit_crit_edge, label %if.end55

if.end50.unlock_exit_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_exit

if.end55:                                         ; preds = %if.end50
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %4, align 8
  %call57 = call fastcc ptr @dfl_fme_region_find(ptr noundef nonnull %46, i32 noundef %48)
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end55.unlock_exit_crit_edge, label %if.end60

if.end55.unlock_exit_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_exit

if.end60:                                         ; preds = %if.end55
  %info61 = getelementptr inbounds %struct.fpga_region, ptr %call57, i32 0, i32 4
  %49 = ptrtoint ptr %info61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info61, align 8
  call void @fpga_image_info_free(ptr noundef %50) #7
  %buf62 = getelementptr inbounds %struct.fpga_image_info, ptr %call47, i32 0, i32 6
  %51 = ptrtoint ptr %buf62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call36, ptr %buf62, align 4
  %count = getelementptr inbounds %struct.fpga_image_info, ptr %call47, i32 0, i32 7
  %52 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and35, ptr %count, align 4
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %4, align 8
  %region_id = getelementptr inbounds %struct.fpga_image_info, ptr %call47, i32 0, i32 8
  %55 = ptrtoint ptr %region_id to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %region_id, align 4
  %56 = ptrtoint ptr %info61 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call47, ptr %info61, align 8
  %call65 = call i32 @fpga_region_program_fpga(ptr noundef nonnull %call57) #7
  %get_bridges = getelementptr inbounds %struct.fpga_region, ptr %call57, i32 0, i32 7
  %57 = ptrtoint ptr %get_bridges to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %get_bridges, align 4
  %tobool66.not = icmp eq ptr %58, null
  br i1 %tobool66.not, label %if.end60.if.end68_crit_edge, label %if.then67

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %bridge_list = getelementptr inbounds %struct.fpga_region, ptr %call57, i32 0, i32 2
  call void @fpga_bridges_put(ptr noundef %bridge_list) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end60.if.end68_crit_edge
  call void @put_device(ptr noundef nonnull %call57) #7
  br label %unlock_exit

unlock_exit:                                      ; preds = %if.end68, %if.end55.unlock_exit_crit_edge, %if.end50.unlock_exit_crit_edge
  %ret.0 = phi i32 [ %call65, %if.end68 ], [ -22, %if.end50.unlock_exit_crit_edge ], [ -22, %if.end55.unlock_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %free_exit

free_exit:                                        ; preds = %unlock_exit, %if.end45.free_exit_crit_edge, %if.then11.i.i124, %if.then27.i.i, %land.rhs16.i.i.free_exit_crit_edge
  %ret.1 = phi i32 [ %ret.0, %unlock_exit ], [ -12, %if.end45.free_exit_crit_edge ], [ -14, %if.then11.i.i124 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.free_exit_crit_edge ]
  call void @vfree(ptr noundef nonnull %call36) #7
  br label %cleanup

cleanup:                                          ; preds = %free_exit, %if.end34.cleanup_crit_edge, %if.then29, %do.body23, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %ret.1, %free_exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then29 ], [ -12, %if.end34.cleanup_crit_edge ], [ -22, %do.body23 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %port_pr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_image_info_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dfl_fme_region_find(ptr noundef readonly %fme, i32 noundef %port_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %region_list.i = getelementptr inbounds %struct.dfl_fme, ptr %fme, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %region_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %region_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %port_id2.i = getelementptr i8, ptr %.pn.i, i32 8
  %1 = ptrtoint ptr %port_id2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port_id2.i, align 4
  %cmp3.i = icmp eq i32 %2, %port_id
  br i1 %cmp3.i, label %dfl_fme_region_find_by_port_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

dfl_fme_region_find_by_port_id.exit:              ; preds = %for.body.i
  %fme_region.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %fme_region.0.le.i, null
  br i1 %tobool.not, label %dfl_fme_region_find_by_port_id.exit.cleanup_crit_edge, label %if.end

dfl_fme_region_find_by_port_id.exit.cleanup_crit_edge: ; preds = %dfl_fme_region_find_by_port_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dfl_fme_region_find_by_port_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %fme_region.0.le.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fme_region.0.le.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %call2 = tail call ptr @fpga_region_class_find(ptr noundef null, ptr noundef %dev, ptr noundef nonnull @dfl_fme_region_match) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dfl_fme_region_find_by_port_id.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dfl_fme_region_find_by_port_id.exit.cleanup_crit_edge ], [ %call2, %if.end ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_image_info_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fpga_region_program_fpga(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_bridges_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_region_class_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dfl_fme_region_match(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @fme_pr_mgmt_id_table, !1, !"fme_pr_mgmt_id_table", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-fme-pr.c", i32 469, i32 29}
!2 = !{ptr @fme_pr_mgmt_ops, !3, !"fme_pr_mgmt_ops", i1 false, i1 false}
!3 = !{!"../drivers/fpga/dfl-fme-pr.c", i32 474, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/fpga/dfl-fme-pr.c", i32 394, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pr_mgmt_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @pr_mgmt_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/fpga/dfl.h", i32 392, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/fpga/dfl-fme-pr.c", i32 189, i32 30}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fpga/dfl-fme-pr.c", i32 244, i32 37}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/fpga/dfl-fme-pr.c", i32 321, i32 45}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/fpga/dfl-fme-pr.c", i32 96, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @fme_pr.__UNIQUE_ID_ddebug257, !21, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 5705179}
!43 = !{i64 2153800441}
!44 = !{i64 2153800879}
!45 = !{!"auto-init"}
!46 = !{i64 2152322779, i64 2152322804}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 4818334}
!49 = !{i64 4818531}
!50 = !{i64 2152303764}
!51 = !{i64 2148287149, i64 2148287154, i64 2148287167, i64 2148287211, i64 2148287245, i64 2148287266}
