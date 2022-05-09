; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/client.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_client_notify = type { ptr, %struct.nvkm_notify, i8, i8, %union.anon.2 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { %struct.nvif_notify_rep_v0 }
%struct.nvif_notify_rep_v0 = type { i8, [6 x i8], i8, i64, [0 x i8] }
%struct.nvif_notify_req_v0 = type { i8, i8, [5 x i8], i8, i64, [0 x i8] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvif_client_devlist_v0 = type { i8, i8, [6 x i8], [0 x i64] }
%struct.nvif_client_v0 = type { i8, [7 x i8], i64, [32 x i8] }

@nvkm_client_notify_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: notify new size %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvkm_client_notify_new\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/client.c\00", [53 x i8] zeroinitializer }, align 32
@nvkm_client_notify_new._entry_ptr = internal global ptr @nvkm_client_notify_new._entry, section ".printk_index", align 4
@nvkm_client_notify_new._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: notify new vers %d reply %d route %02x token %llx\0A\00", [45 x i8] zeroinitializer }, align 32
@nvkm_client_notify_new._entry_ptr.5 = internal global ptr @nvkm_client_notify_new._entry.3, section ".printk_index", align 4
@nvkm_client = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_client_dtor, ptr null, ptr @nvkm_client_fini, ptr @nvkm_client_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_client_child_get }, [36 x i8] zeroinitializer }, align 32
@nvkm_uclient_sclass = internal constant { %struct.nvkm_sclass, [44 x i8] } { %struct.nvkm_sclass { i32 0, i32 0, i32 0, ptr null, ptr @nvkm_uclient_new }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLIENT\00", [25 x i8] zeroinitializer }, align 32
@nvkm_client_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&client->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fini\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@__const.nvkm_client_fini.name = private unnamed_addr constant [2 x ptr] [ptr @.str.9, ptr @.str.10], align 4
@nvkm_client_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016nouveau: %s:%08x:%08x: %s notify\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_client_fini\00", [47 x i8] zeroinitializer }, align 32
@nvkm_client_fini._entry_ptr = internal global ptr @nvkm_client_fini._entry, section ".printk_index", align 4
@nvkm_client_mthd_devlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: client devlist size %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvkm_client_mthd_devlist\00", [39 x i8] zeroinitializer }, align 32
@nvkm_client_mthd_devlist._entry_ptr = internal global ptr @nvkm_client_mthd_devlist._entry, section ".printk_index", align 4
@nvkm_client_mthd_devlist._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: client devlist vers %d count %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nvkm_client_mthd_devlist._entry_ptr.17 = internal global ptr @nvkm_client_mthd_devlist._entry.15, section ".printk_index", align 4
@nvkm_udevice_sclass = external dso_local local_unnamed_addr constant %struct.nvkm_sclass, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 151, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 153, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"nvkm_client\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 278, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"nvkm_uclient_sclass\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 64, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 299, i32 47 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 301, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 305, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 259, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 259, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 261, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 199, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/client.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 201, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @nvkm_client_fini._entry, ptr @nvkm_client_fini._entry_ptr, ptr @nvkm_client_mthd_devlist._entry, ptr @nvkm_client_mthd_devlist._entry.15, ptr @nvkm_client_mthd_devlist._entry_ptr, ptr @nvkm_client_mthd_devlist._entry_ptr.17, ptr @nvkm_client_notify_new._entry, ptr @nvkm_client_notify_new._entry.3, ptr @nvkm_client_notify_new._entry_ptr, ptr @nvkm_client_notify_new._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @nvkm_client, ptr @nvkm_uclient_sclass, ptr @.str.6, ptr @.str.7, ptr @nvkm_client_new.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_client_notify_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_client_notify_new._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_client to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uclient_sclass to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_client_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_client_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_client_mthd_devlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_client_mthd_devlist._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_notify_put(ptr nocapture noundef readonly %client, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %index)
  %cmp = icmp ult i32 %index, 32
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.nvkm_client, ptr %client, i32 0, i32 4, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.then1

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %n = getelementptr inbounds %struct.nvkm_client_notify, ptr %1, i32 0, i32 1
  tail call void @nvkm_notify_put(ptr noundef %n) #7
  br label %return

return:                                           ; preds = %if.then1, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -2, %if.then.return_crit_edge ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_notify_get(ptr nocapture noundef readonly %client, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %index)
  %cmp = icmp ult i32 %index, 32
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.nvkm_client, ptr %client, i32 0, i32 4, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.then1

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %n = getelementptr inbounds %struct.nvkm_client_notify, ptr %1, i32 0, i32 1
  tail call void @nvkm_notify_get(ptr noundef %n) #7
  br label %return

return:                                           ; preds = %if.then1, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -2, %if.then.return_crit_edge ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_notify_del(ptr nocapture noundef %client, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %index)
  %cmp = icmp ult i32 %index, 32
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.nvkm_client, ptr %client, i32 0, i32 4, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.then1

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %n = getelementptr inbounds %struct.nvkm_client_notify, ptr %1, i32 0, i32 1
  tail call void @nvkm_notify_fini(ptr noundef %n) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.then1, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -2, %if.then.return_crit_edge ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_notify_new(ptr noundef %object, ptr noundef %event, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_client, ptr %1, i32 0, i32 4, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end8, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 112) #10
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end8
  %5 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp13 = icmp ugt i32 %8, 4
  br i1 %cmp13, label %do.end, label %do.body.land.lhs.true_crit_edge

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %11 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oclass, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %10, i32 noundef %12, i32 noundef %size) #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %do.body.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp23 = icmp ugt i32 %size, 15
  br i1 %cmp23, label %land.lhs.true29, label %land.lhs.true.if.end94_crit_edge

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

land.lhs.true29:                                  ; preds = %land.lhs.true
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp32 = icmp eq i8 %14, 0
  br i1 %cmp32, label %do.body42, label %land.lhs.true29.if.end94_crit_edge

land.lhs.true29.if.end94_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

do.body42:                                        ; preds = %land.lhs.true29
  %add.ptr = getelementptr i8, ptr %data, i32 16
  %sub = add i32 %size, -16
  %15 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client1, align 4
  %debug46 = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %debug46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp47 = icmp ugt i32 %18, 4
  br i1 %cmp47, label %do.end52, label %do.body42.if.then82_crit_edge

do.body42.if.then82_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

do.end52:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %name54 = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 1
  %handle56 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %19 = ptrtoint ptr %handle56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle56, align 8
  %oclass57 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %21 = ptrtoint ptr %oclass57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oclass57, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 8
  %conv59 = zext i8 %24 to i32
  %reply60 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %reply60 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reply60, align 1
  %conv61 = zext i8 %26 to i32
  %route = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %route, align 1
  %conv62 = zext i8 %28 to i32
  %token = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %data, i32 0, i32 4
  %29 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %token, align 8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name54, i32 noundef %20, i32 noundef %22, i32 noundef %conv59, i32 noundef %conv61, i32 noundef %conv62, i64 noundef %30) #11
  br label %if.then82

if.then82:                                        ; preds = %do.end52, %do.body42.if.then82_crit_edge
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data, align 8
  %version68 = getelementptr inbounds %struct.nvkm_client_notify, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %version68 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %version68, align 8
  %size69 = getelementptr inbounds %struct.nvkm_client_notify, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %size69 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %size69, align 1
  %rep = getelementptr inbounds %struct.nvkm_client_notify, ptr %call7.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %rep, align 8
  %route72 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %data, i32 0, i32 3
  %36 = ptrtoint ptr %route72 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %route72, align 1
  %route74 = getelementptr inbounds %struct.nvkm_client_notify, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %38 = ptrtoint ptr %route74 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %route74, align 1
  %token75 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %data, i32 0, i32 4
  %39 = ptrtoint ptr %token75 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %token75, align 8
  %token77 = getelementptr inbounds %struct.nvkm_client_notify, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  %41 = ptrtoint ptr %token77 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %token77, align 8
  %reply78 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %data, i32 0, i32 1
  %42 = ptrtoint ptr %reply78 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reply78, align 1
  %phi.cast = zext i8 %43 to i32
  %n = getelementptr inbounds %struct.nvkm_client_notify, ptr %call7.i.i, i32 0, i32 1
  %call84 = tail call i32 @nvkm_notify_init(ptr noundef %object, ptr noundef %event, ptr noundef nonnull @nvkm_client_notify, i1 noundef zeroext false, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %phi.cast, ptr noundef %n) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then87, label %if.then82.if.end94_crit_edge

if.then82.if.end94_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then87:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %1, ptr %call7.i.i, align 8
  br label %cleanup

if.end94:                                         ; preds = %if.then82.if.end94_crit_edge, %land.lhs.true29.if.end94_crit_edge, %land.lhs.true.if.end94_crit_edge
  %ret.0 = phi i32 [ %call84, %if.then82.if.end94_crit_edge ], [ -38, %land.lhs.true29.if.end94_crit_edge ], [ -38, %land.lhs.true.if.end94_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then87, %if.end8.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %indvars.iv, %if.then87 ], [ %ret.0, %if.end94 ], [ -12, %if.end8.cleanup_crit_edge ], [ -28, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_client_notify(ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %n, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ntfy = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ntfy, align 4
  %rep = getelementptr i8, ptr %n, i32 92
  %size = getelementptr i8, ptr %n, i32 85
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %size, align 1
  %conv = zext i8 %5 to i32
  %data = getelementptr inbounds %struct.nvkm_notify, ptr %n, i32 0, i32 9
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %size2 = getelementptr inbounds %struct.nvkm_notify, ptr %n, i32 0, i32 7
  %8 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size2, align 4
  %call = tail call i32 %3(ptr noundef %rep, i32 noundef %conv, ptr noundef %7, i32 noundef %9) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_client_search(ptr noundef %client, i64 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nvkm_object_search(ptr noundef %client, i64 noundef %handle, ptr noundef nonnull @nvkm_client) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_new(ptr noundef %name, i64 noundef %device, ptr nocapture readnone %cfg, ptr noundef %dbg, ptr noundef %ntfy, ptr nocapture noundef writeonly %pclient) local_unnamed_addr #0 align 64 {
entry:
  %oclass = alloca %struct.nvkm_oclass, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %oclass) #7
  %0 = getelementptr inbounds i8, ptr %oclass, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %2 = ptrtoint ptr %oclass to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %oclass, align 8
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %base, ptr @nvkm_uclient_sclass, i32 20)
  %priv = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 2
  %token = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 6
  %4 = call ptr @memset(ptr %priv, i32 0, i32 13)
  %5 = call ptr @memset(ptr %token, i32 0, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 312) #10
  %7 = ptrtoint ptr %pclient to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %pclient, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %8 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %client, align 8
  call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_client, ptr noundef nonnull %oclass, ptr noundef nonnull %call7.i.i) #7
  %name4 = getelementptr inbounds %struct.nvkm_client, ptr %call7.i.i, i32 0, i32 1
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name4, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %name)
  %device6 = getelementptr inbounds %struct.nvkm_client, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %device6 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %device, ptr %device6, align 8
  %call7 = call i32 @nvkm_dbgopt(ptr noundef %dbg, ptr noundef nonnull @.str.7) #7
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call7, ptr %debug, align 8
  %objroot = getelementptr inbounds %struct.nvkm_client, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %objroot to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %objroot, align 4
  %ntfy8 = getelementptr inbounds %struct.nvkm_client, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %ntfy8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ntfy, ptr %ntfy8, align 4
  %umem = getelementptr inbounds %struct.nvkm_client, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %umem, ptr %umem, align 8
  %prev.i = getelementptr inbounds %struct.nvkm_client, ptr %call7.i.i, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %umem, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.nvkm_client, ptr %call7.i.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @nvkm_client_new.__key, i16 noundef signext 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %oclass) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dbgopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_client_dtor(ptr noundef returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %if.then.i

if.then.i:                                        ; preds = %nvkm_client_notify_del.exit.if.then.i_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %nvkm_client_notify_del.exit.if.then.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nvkm_client, ptr %object, i32 0, i32 4, i32 %i.04
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i.nvkm_client_notify_del.exit_crit_edge, label %if.then1.i

if.then.i.nvkm_client_notify_del.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_client_notify_del.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %n.i = getelementptr inbounds %struct.nvkm_client_notify, ptr %1, i32 0, i32 1
  tail call void @nvkm_notify_fini(ptr noundef %n.i) #7
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.i, align 4
  br label %nvkm_client_notify_del.exit

nvkm_client_notify_del.exit:                      ; preds = %if.then1.i, %if.then.i.nvkm_client_notify_del.exit_crit_edge
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %nvkm_client_notify_del.exit.if.then.i_crit_edge

nvkm_client_notify_del.exit.if.then.i_crit_edge:  ; preds = %nvkm_client_notify_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.end:                                          ; preds = %nvkm_client_notify_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_client_fini(ptr nocapture noundef readonly %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.then.i.preheader_crit_edge

entry.if.then.i.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name4 = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %idxprom = zext i1 %suspend to i32
  %arrayidx = getelementptr [2 x ptr], ptr @__const.nvkm_client_fini.name, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name4, i32 noundef %5, i32 noundef %7, ptr noundef %9) #11
  br label %if.then.i.preheader

if.then.i.preheader:                              ; preds = %do.end, %entry.if.then.i.preheader_crit_edge
  br label %if.then.i

if.then.i:                                        ; preds = %nvkm_client_notify_put.exit.if.then.i_crit_edge, %if.then.i.preheader
  %i.015 = phi i32 [ %inc, %nvkm_client_notify_put.exit.if.then.i_crit_edge ], [ 0, %if.then.i.preheader ]
  %arrayidx.i = getelementptr %struct.nvkm_client, ptr %object, i32 0, i32 4, i32 %i.015
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i.nvkm_client_notify_put.exit_crit_edge, label %if.then1.i

if.then.i.nvkm_client_notify_put.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_client_notify_put.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %n.i = getelementptr inbounds %struct.nvkm_client_notify, ptr %11, i32 0, i32 1
  tail call void @nvkm_notify_put(ptr noundef %n.i) #7
  br label %nvkm_client_notify_put.exit

nvkm_client_notify_put.exit:                      ; preds = %if.then1.i, %if.then.i.nvkm_client_notify_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %nvkm_client_notify_put.exit.if.then.i_crit_edge

nvkm_client_notify_put.exit.if.then.i_crit_edge:  ; preds = %nvkm_client_notify_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.end:                                          ; preds = %nvkm_client_notify_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_client_mthd(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mthd)
  %cond = icmp eq i32 %mthd, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %client1.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ugt i32 %3, 4
  br i1 %cmp.i, label %do.end.i, label %sw.bb.land.lhs.true.i_crit_edge

sw.bb.land.lhs.true.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle.i, align 8
  %oclass.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef %5, i32 noundef %7, i32 noundef %size) #11
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %sw.bb.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6.i = icmp ugt i32 %size, 7
  br i1 %cmp6.i, label %land.lhs.true10.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13.i = icmp eq i8 %9, 0
  br i1 %cmp13.i, label %do.body22.i, label %land.lhs.true10.i.cleanup_crit_edge

land.lhs.true10.i.cleanup_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body22.i:                                      ; preds = %land.lhs.true10.i
  %sub.i = add i32 %size, -8
  %10 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1.i, align 4
  %debug27.i = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %debug27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp28.i = icmp ugt i32 %13, 4
  br i1 %cmp28.i, label %do.end33.i, label %do.body22.i.if.end43.i_crit_edge

do.body22.i.if.end43.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

do.end33.i:                                       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  %name35.i = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %handle37.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %14 = ptrtoint ptr %handle37.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle37.i, align 8
  %oclass38.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass38.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass38.i, align 4
  %count.i = getelementptr inbounds %struct.nvif_client_devlist_v0, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %count.i, align 1
  %conv41.i = zext i8 %19 to i32
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name35.i, i32 noundef %15, i32 noundef %17, i32 noundef 0, i32 noundef %conv41.i) #11
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end33.i, %do.body22.i.if.end43.i_crit_edge
  %count46.i = getelementptr inbounds %struct.nvif_client_devlist_v0, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %count46.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %count46.i, align 1
  %conv47.i = zext i8 %21 to i32
  %mul.i = shl nuw nsw i32 %conv47.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mul.i)
  %cmp48.i = icmp eq i32 %sub.i, %mul.i
  br i1 %cmp48.i, label %if.then50.i, label %if.end43.i.cleanup_crit_edge

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50.i:                                      ; preds = %if.end43.i
  %device.i = getelementptr inbounds %struct.nvif_client_devlist_v0, ptr %data, i32 0, i32 3
  %call54.i = tail call i32 @nvkm_device_list(ptr noundef %device.i, i32 noundef %conv47.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call54.i)
  %cmp55.i = icmp sgt i32 %call54.i, -1
  br i1 %cmp55.i, label %if.then57.i, label %if.then50.i.cleanup_crit_edge

if.then50.i.cleanup_crit_edge:                    ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv58.i = trunc i32 %call54.i to i8
  %22 = ptrtoint ptr %count46.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv58.i, ptr %count46.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then57.i, %if.then50.i.cleanup_crit_edge, %if.end43.i.cleanup_crit_edge, %land.lhs.true10.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then57.i ], [ %call54.i, %if.then50.i.cleanup_crit_edge ], [ -22, %if.end43.i.cleanup_crit_edge ], [ -38, %land.lhs.true10.i.cleanup_crit_edge ], [ -38, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_client_child_get(ptr nocapture noundef readnone %object, i32 noundef %index, ptr nocapture noundef writeonly %oclass) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %index, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %sclass.0 = phi ptr [ @nvkm_udevice_sclass, %sw.bb1 ], [ @nvkm_uclient_sclass, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %oclass to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nvkm_client_child_new, ptr %oclass, align 8
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %base, ptr %sclass.0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_list(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_client_child_new(ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctor = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctor, align 4
  %call = tail call i32 %1(ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_uclient_new(ptr nocapture noundef readonly %oclass, ptr noundef %argv, i32 noundef %argc, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  %client = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %client) #7
  %0 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %client, align 4, !annotation !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %argc)
  %cmp1 = icmp ugt i32 %argc, 47
  br i1 %cmp1, label %land.lhs.true5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true5:                                   ; preds = %entry
  %1 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp8 = icmp eq i8 %2, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 48
  br i1 %tobool.not, label %if.then13, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.then
  %name = getelementptr inbounds %struct.nvif_client_v0, ptr %argv, i32 0, i32 3
  %arrayidx = getelementptr %struct.nvif_client_v0, ptr %argv, i32 0, i32 3, i32 31
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %device = getelementptr inbounds %struct.nvif_client_v0, ptr %argv, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %device, align 8
  %client15 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %6 = ptrtoint ptr %client15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client15, align 8
  %ntfy = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ntfy, align 4
  %call = call i32 @nvkm_client_new(ptr noundef %name, i64 noundef %5, ptr undef, ptr noundef null, ptr noundef %9, ptr noundef nonnull %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end19, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %client15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client15, align 8
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %client21 = getelementptr inbounds %struct.nvkm_object, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %client21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %client21, align 4
  %handle = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 4
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle, align 8
  %handle23 = getelementptr inbounds %struct.nvkm_object, ptr %13, i32 0, i32 4
  %17 = ptrtoint ptr %handle23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %handle23, align 8
  %route = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 5
  %18 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %route, align 4
  %route25 = getelementptr inbounds %struct.nvkm_object, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %route25 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %route25, align 4
  %token = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 6
  %21 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %token, align 8
  %token27 = getelementptr inbounds %struct.nvkm_object, ptr %13, i32 0, i32 8
  %23 = ptrtoint ptr %token27 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %token27, align 8
  %object28 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 7
  %24 = ptrtoint ptr %object28 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %object28, align 8
  %object30 = getelementptr inbounds %struct.nvkm_object, ptr %13, i32 0, i32 9
  %26 = ptrtoint ptr %object30 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %object30, align 8
  %27 = load ptr, ptr %client15, align 8
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug, align 8
  %debug32 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %30 = ptrtoint ptr %debug32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %debug32, align 8
  %31 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %13, ptr %pobject, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then13.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call, %if.then13.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ], [ -38, %land.lhs.true5.cleanup_crit_edge ], [ -7, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %client) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 151, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nvkm_client_notify_new._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nvkm_client_notify_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 153, i32 3}
!8 = !{ptr @nvkm_client_notify_new._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_client_notify_new._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 299, i32 47}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 301, i32 35}
!14 = !{ptr @nvkm_client_new.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 305, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvkm_client, !18, !"nvkm_client", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 278, i32 1}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 259, i32 26}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 259, i32 34}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 261, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nvkm_client_fini._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @nvkm_client_fini._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 199, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nvkm_client_mthd_devlist._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @nvkm_client_mthd_devlist._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 201, i32 3}
!35 = !{ptr @nvkm_client_mthd_devlist._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvkm_client_mthd_devlist._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @nvkm_uclient_sclass, !38, !"nvkm_uclient_sclass", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/client.c", i32 64, i32 1}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
