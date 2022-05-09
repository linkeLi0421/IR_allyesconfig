; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_unicode.c_pt.bc'
source_filename = "../fs/jfs/jfs_unicode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.63 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.component_name = type { i32, ptr }

@jfs_strfromUCS_le.warn_again = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@jfs_strfromUCS_le._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013non-latin1 character 0x%x found in JFS file name\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jfs_strfromUCS_le\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/jfs/jfs_unicode.c\00", [43 x i8] zeroinitializer }, align 32
@jfs_strfromUCS_le._entry_ptr = internal global ptr @jfs_strfromUCS_le._entry, section ".printk_index", align 4
@jfs_strfromUCS_le._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013mount with iocharset=utf8 to access\0A\00", [57 x i8] zeroinitializer }, align 32
@jfs_strfromUCS_le._entry_ptr.5 = internal global ptr @jfs_strfromUCS_le._entry.3, section ".printk_index", align 4
@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@jfs_strtoUCS._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013jfs_strtoUCS: char2uni returned %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jfs_strtoUCS\00", [19 x i8] zeroinitializer }, align 32
@jfs_strtoUCS._entry_ptr = internal global ptr @jfs_strtoUCS._entry, section ".printk_index", align 4
@jfs_strtoUCS._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013charset = %s, char = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@jfs_strtoUCS._entry_ptr.10 = internal global ptr @jfs_strtoUCS._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"warn_again\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 24, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 46, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 49, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 80, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [24 x i8] c"../fs/jfs/jfs_unicode.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 82, i32 5 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @jfs_strfromUCS_le._entry, ptr @jfs_strfromUCS_le._entry.3, ptr @jfs_strfromUCS_le._entry_ptr, ptr @jfs_strfromUCS_le._entry_ptr.5, ptr @jfs_strtoUCS._entry, ptr @jfs_strtoUCS._entry.8, ptr @jfs_strtoUCS._entry_ptr, ptr @jfs_strtoUCS._entry_ptr.10, ptr @jfs_strfromUCS_le.warn_again, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_strfromUCS_le.warn_again to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_strfromUCS_le._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_strfromUCS_le._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_strtoUCS._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_strtoUCS._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_strfromUCS_le(ptr noundef %to, ptr nocapture noundef readonly %from, i32 noundef %len, ptr noundef readonly %codepage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool2.not = icmp eq ptr %codepage, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1393 = icmp sgt i32 %len, 0
  br i1 %tobool2.not, label %if.else11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp1393, label %land.rhs.lr.ph, label %for.cond.preheader.if.end57_crit_edge

for.cond.preheader.if.end57_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %codepage, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.091 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc10, %if.end.land.rhs_crit_edge ]
  %outlen.090 = phi i32 [ 0, %land.rhs.lr.ph ], [ %outlen.1, %if.end.land.rhs_crit_edge ]
  %arrayidx = getelementptr i16, ptr %from, i32 %i.091
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool3.not = icmp eq i16 %1, 0
  br i1 %tobool3.not, label %land.rhs.if.end57_crit_edge, label %for.body

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

for.body:                                         ; preds = %land.rhs
  %2 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uni2char, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %1)
  %arrayidx5 = getelementptr i8, ptr %to, i32 %outlen.090
  %call = tail call i32 %3(i16 noundef zeroext %4, ptr noundef %arrayidx5, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp sgt i32 %call, 0
  br i1 %cmp6, label %for.body.if.end_crit_edge, label %if.else

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 63, ptr %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge
  %call.pn = phi i32 [ 1, %if.else ], [ %call, %for.body.if.end_crit_edge ]
  %outlen.1 = add i32 %call.pn, %outlen.090
  %inc10 = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc10, %len
  br i1 %exitcond.not, label %if.end.if.end57_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.else11:                                        ; preds = %entry
  br i1 %cmp1393, label %land.rhs15.preheader, label %if.else11.if.end57_crit_edge

if.else11.if.end57_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.rhs15.preheader:                             ; preds = %if.else11
  %6 = load i32, ptr @jfs_strfromUCS_le.warn_again, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  %lnot.ext = zext i1 %tobool to i32
  br label %land.rhs15

land.rhs15:                                       ; preds = %for.inc54.land.rhs15_crit_edge, %land.rhs15.preheader
  %i.195 = phi i32 [ %inc55, %for.inc54.land.rhs15_crit_edge ], [ 0, %land.rhs15.preheader ]
  %warn.094 = phi i32 [ %warn.1, %for.inc54.land.rhs15_crit_edge ], [ %lnot.ext, %land.rhs15.preheader ]
  %arrayidx16 = getelementptr i16, ptr %from, i32 %i.195
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool18.not = icmp eq i16 %8, 0
  br i1 %tobool18.not, label %land.rhs15.if.end57_crit_edge, label %for.body20

land.rhs15.if.end57_crit_edge:                    ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

for.body20:                                       ; preds = %land.rhs15
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %tobool23.not = icmp ult i16 %9, 256
  br i1 %tobool23.not, label %if.else49, label %if.then29, !prof !30

if.then29:                                        ; preds = %for.body20
  %arrayidx30 = getelementptr i8, ptr %to, i32 %i.195
  %10 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 63, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %warn.094)
  %tobool31.not = icmp eq i32 %warn.094, 0
  br i1 %tobool31.not, label %if.then29.for.inc54_crit_edge, label %if.then38, !prof !30

if.then29.for.inc54_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc54

if.then38:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %warn.094, -1
  %11 = load i32, ptr @jfs_strfromUCS_le.warn_again, align 4
  %dec39 = add i32 %11, -1
  store i32 %dec39, ptr @jfs_strfromUCS_le.warn_again, align 4
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx16, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv41 = zext i16 %14 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv41) #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %for.inc54

if.else49:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  %conv51 = trunc i16 %9 to i8
  %arrayidx52 = getelementptr i8, ptr %to, i32 %i.195
  %15 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv51, ptr %arrayidx52, align 1
  br label %for.inc54

for.inc54:                                        ; preds = %if.else49, %if.then38, %if.then29.for.inc54_crit_edge
  %warn.1 = phi i32 [ %dec, %if.then38 ], [ 0, %if.then29.for.inc54_crit_edge ], [ %warn.094, %if.else49 ]
  %inc55 = add nuw nsw i32 %i.195, 1
  %exitcond101.not = icmp eq i32 %inc55, %len
  br i1 %exitcond101.not, label %for.inc54.if.end57_crit_edge, label %for.inc54.land.rhs15_crit_edge

for.inc54.land.rhs15_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs15

for.inc54.if.end57_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.end57:                                         ; preds = %for.inc54.if.end57_crit_edge, %land.rhs15.if.end57_crit_edge, %if.else11.if.end57_crit_edge, %if.end.if.end57_crit_edge, %land.rhs.if.end57_crit_edge, %for.cond.preheader.if.end57_crit_edge
  %outlen.2 = phi i32 [ 0, %if.else11.if.end57_crit_edge ], [ 0, %for.cond.preheader.if.end57_crit_edge ], [ %len, %for.inc54.if.end57_crit_edge ], [ %i.195, %land.rhs15.if.end57_crit_edge ], [ %outlen.1, %if.end.if.end57_crit_edge ], [ %outlen.090, %land.rhs.if.end57_crit_edge ]
  %arrayidx58 = getelementptr i8, ptr %to, i32 %outlen.2
  %16 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx58, align 1
  ret i32 %outlen.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_UCSname(ptr nocapture noundef %uniName, ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %nls_tab1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %nls_tab1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nls_tab1, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp = icmp sgt i32 %7, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nsw i32 %7, 1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 2) #5
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !31

kmalloc_array.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name30 = getelementptr inbounds %struct.component_name, ptr %uniName, i32 0, i32 1
  %10 = ptrtoint ptr %name30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %name30, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3136) #9
  %name = getelementptr inbounds %struct.component_name, ptr %uniName, i32 0, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %name, align 4
  %cmp4 = icmp eq ptr %call8.i, null
  br i1 %cmp4, label %if.end7.i.cleanup_crit_edge, label %if.end6

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i
  %name9 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name9, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.cond26.preheader.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not72.i = icmp eq i32 %7, 0
  br i1 %tobool1.not72.i, label %for.cond.preheader.i.if.end41.i_crit_edge, label %land.rhs.lr.ph.i

for.cond.preheader.i.if.end41.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

land.rhs.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 3
  br label %land.rhs.i

for.cond26.preheader.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2777.i = icmp sgt i32 %7, 0
  br i1 %cmp2777.i, label %for.cond26.preheader.i.land.rhs29.i_crit_edge, label %for.cond26.preheader.i.if.end41.i_crit_edge

for.cond26.preheader.i.if.end41.i_crit_edge:      ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

for.cond26.preheader.i.land.rhs29.i_crit_edge:    ; preds = %for.cond26.preheader.i
  br label %land.rhs29.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %from.addr.075.i = phi ptr [ %14, %land.rhs.lr.ph.i ], [ %add.ptr.i, %for.inc.i.land.rhs.i_crit_edge ]
  %i.074.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %len.addr.073.i = phi i32 [ %7, %land.rhs.lr.ph.i ], [ %sub.i, %for.inc.i.land.rhs.i_crit_edge ]
  %15 = ptrtoint ptr %from.addr.075.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %from.addr.075.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not.i = icmp eq i8 %16, 0
  br i1 %tobool2.not.i, label %land.rhs.i.if.end41.i_crit_edge, label %for.body.i

land.rhs.i.if.end41.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

for.body.i:                                       ; preds = %land.rhs.i
  %17 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %char2uni.i, align 4
  %arrayidx.i = getelementptr i16, ptr %call8.i, i32 %i.074.i
  %call.i = tail call i32 %18(ptr noundef %from.addr.075.i, i32 noundef %len.addr.073.i, ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %do.body.i, label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %19 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5.i = icmp sgt i32 %19, 0
  br i1 %cmp5.i, label %do.body12.i, label %do.body.i.jfs_strtoUCS.exit_crit_edge

do.body.i.jfs_strtoUCS.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jfs_strtoUCS.exit

do.body12.i:                                      ; preds = %do.body.i
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %.pr.i = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp13.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %do.body12.i.jfs_strtoUCS.exit_crit_edge

do.body12.i.jfs_strtoUCS.exit_crit_edge:          ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jfs_strtoUCS.exit

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %22 = ptrtoint ptr %from.addr.075.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %from.addr.075.i, align 1
  %conv20.i = zext i8 %23 to i32
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %21, i32 noundef %conv20.i) #8
  br label %jfs_strtoUCS.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.074.i, 1
  %add.ptr.i = getelementptr i8, ptr %from.addr.075.i, i32 %call.i
  %sub.i = sub i32 %len.addr.073.i, %call.i
  %tobool1.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool1.not.i, label %for.inc.i.if.end41.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.if.end41.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

land.rhs29.i:                                     ; preds = %for.body34.i.land.rhs29.i_crit_edge, %for.cond26.preheader.i.land.rhs29.i_crit_edge
  %i.178.i = phi i32 [ %inc39.i, %for.body34.i.land.rhs29.i_crit_edge ], [ 0, %for.cond26.preheader.i.land.rhs29.i_crit_edge ]
  %arrayidx30.i = getelementptr i8, ptr %14, i32 %i.178.i
  %24 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not.i = icmp eq i8 %25, 0
  br i1 %tobool32.not.i, label %land.rhs29.i.if.end41.i_crit_edge, label %for.body34.i

land.rhs29.i.if.end41.i_crit_edge:                ; preds = %land.rhs29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

for.body34.i:                                     ; preds = %land.rhs29.i
  %conv36.i = zext i8 %25 to i16
  %arrayidx37.i = getelementptr i16, ptr %call8.i, i32 %i.178.i
  %26 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv36.i, ptr %arrayidx37.i, align 2
  %inc39.i = add nuw nsw i32 %i.178.i, 1
  %exitcond.not.i = icmp eq i32 %inc39.i, %7
  br i1 %exitcond.not.i, label %for.body34.i.if.end41.i_crit_edge, label %for.body34.i.land.rhs29.i_crit_edge

for.body34.i.land.rhs29.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs29.i

for.body34.i.if.end41.i_crit_edge:                ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.body34.i.if.end41.i_crit_edge, %land.rhs29.i.if.end41.i_crit_edge, %for.inc.i.if.end41.i_crit_edge, %land.rhs.i.if.end41.i_crit_edge, %for.cond26.preheader.i.if.end41.i_crit_edge, %for.cond.preheader.i.if.end41.i_crit_edge
  %i.2.i = phi i32 [ 0, %for.cond26.preheader.i.if.end41.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end41.i_crit_edge ], [ %i.178.i, %land.rhs29.i.if.end41.i_crit_edge ], [ %7, %for.body34.i.if.end41.i_crit_edge ], [ %i.074.i, %land.rhs.i.if.end41.i_crit_edge ], [ %inc.i, %for.inc.i.if.end41.i_crit_edge ]
  %arrayidx42.i = getelementptr i16, ptr %call8.i, i32 %i.2.i
  %27 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %arrayidx42.i, align 2
  br label %jfs_strtoUCS.exit

jfs_strtoUCS.exit:                                ; preds = %if.end41.i, %do.end18.i, %do.body12.i.jfs_strtoUCS.exit_crit_edge, %do.body.i.jfs_strtoUCS.exit_crit_edge
  %retval.0.i28 = phi i32 [ %i.2.i, %if.end41.i ], [ %call.i, %do.end18.i ], [ %call.i, %do.body12.i.jfs_strtoUCS.exit_crit_edge ], [ %call.i, %do.body.i.jfs_strtoUCS.exit_crit_edge ]
  %28 = ptrtoint ptr %uniName to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i28, ptr %uniName, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i28)
  %cmp12 = icmp slt i32 %retval.0.i28, 0
  br i1 %cmp12, label %if.then13, label %jfs_strtoUCS.exit.cleanup_crit_edge

jfs_strtoUCS.exit.cleanup_crit_edge:              ; preds = %jfs_strtoUCS.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %jfs_strtoUCS.exit
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %30) #5
  %31 = ptrtoint ptr %uniName to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uniName, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %jfs_strtoUCS.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %if.then13 ], [ -36, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %jfs_strtoUCS.exit.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @jfs_strfromUCS_le.warn_again, !1, !"warn_again", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_unicode.c", i32 24, i32 13}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jfs/jfs_unicode.c", i32 46, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jfs_strfromUCS_le._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jfs_strfromUCS_le._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jfs/jfs_unicode.c", i32 49, i32 6}
!10 = !{ptr @jfs_strfromUCS_le._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @jfs_strfromUCS_le._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jfs/jfs_unicode.c", i32 80, i32 5}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @jfs_strtoUCS._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @jfs_strtoUCS._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/jfs/jfs_unicode.c", i32 82, i32 5}
!19 = !{ptr @jfs_strtoUCS._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @jfs_strtoUCS._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{!"branch_weights", i32 1, i32 2000}
