; ModuleID = '/llk/IR_all_yes/fs/ksmbd/misc.c_pt.bc'
source_filename = "../fs/ksmbd/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ksmbd_share_config = type { ptr, ptr, i32, i32, %struct.list_head, %struct.path, %struct.atomic_t, %struct.hlist_node, i16, i16, i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ksmbd_dir_info = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32 }

@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_validate_filename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016ksmbd: File name validation failed: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ksmbd_validate_filename\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ksmbd/misc.c\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_validate_filename._entry_ptr = internal global ptr @ksmbd_validate_filename._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@parse_stream_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: filename : %s, streams : %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parse_stream_name\00", [46 x i8] zeroinitializer }, align 32
@parse_stream_name._entry_ptr = internal global ptr @parse_stream_name._entry, section ".printk_index", align 4
@parse_stream_name._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ksmbd: stream name : %s, stream type : %s\0A\00", [51 x i8] zeroinitializer }, align 32
@parse_stream_name._entry_ptr.8 = internal global ptr @parse_stream_name._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"$data\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"$index_allocation\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\\\00", [30 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ksmbd_validate_stream_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ksmbd: Stream name validation failed: %c\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksmbd_validate_stream_name\00", [37 x i8] zeroinitializer }, align 32
@ksmbd_validate_stream_name._entry_ptr = internal global ptr @ksmbd_validate_stream_name._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 42, i64 63]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 8, i64 34, i64 42, i64 60, i64 62, i64 63, i64 124]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 47, i64 58, i64 92]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 95, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 125, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 126, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 137, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 139, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 141, i32 25 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 166, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [19 x i8] c"../fs/ksmbd/misc.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 110, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @ksmbd_validate_filename._entry, ptr @ksmbd_validate_filename._entry_ptr, ptr @ksmbd_validate_stream_name._entry, ptr @ksmbd_validate_stream_name._entry_ptr, ptr @parse_stream_name._entry, ptr @parse_stream_name._entry.6, ptr @parse_stream_name._entry_ptr, ptr @parse_stream_name._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_validate_filename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_stream_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_stream_name._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_validate_stream_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_pattern(ptr nocapture noundef readonly %str, i32 noundef %len, ptr nocapture noundef readonly %pattern) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not55 = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not56 = icmp eq i32 %len, 0
  %or.cond57 = or i1 %tobool.not55, %tobool1.not56
  br i1 %or.cond57, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %15, %sw.epilog.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %star.0.off063 = phi i1 [ %star.1.off0, %sw.epilog.while.body_crit_edge ], [ false, %entry.while.body_crit_edge ]
  %p.062 = phi ptr [ %p.1, %sw.epilog.while.body_crit_edge ], [ %pattern, %entry.while.body_crit_edge ]
  %s.061 = phi ptr [ %s.1, %sw.epilog.while.body_crit_edge ], [ %str, %entry.while.body_crit_edge ]
  %pattern.addr.060 = phi ptr [ %pattern.addr.1, %sw.epilog.while.body_crit_edge ], [ %pattern, %entry.while.body_crit_edge ]
  %len.addr.059 = phi i32 [ %len.addr.1, %sw.epilog.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %str.addr.058 = phi ptr [ %str.addr.1, %sw.epilog.while.body_crit_edge ], [ %str, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %p.062 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p.062, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %sw.default [
    i8 63, label %sw.bb
    i8 42, label %sw.bb4
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr i8, ptr %s.061, i32 1
  %dec = add i32 %len.addr.059, -1
  %incdec.ptr3 = getelementptr i8, ptr %p.062, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %incdec.ptr5 = getelementptr i8, ptr %p.062, i32 1
  %6 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.default:                                       ; preds = %while.body
  %conv.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 0
  %sub.i = add i8 %2, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %2, i8 %sub.i
  %conv.i49 = zext i8 %4 to i32
  %arrayidx.i50 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i49
  %11 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i50, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not.i51 = icmp eq i8 %13, 0
  %sub.i52 = add i8 %4, 32
  %spec.select.i53 = select i1 %cmp.not.i51, i8 %4, i8 %sub.i52
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %spec.select.i53)
  %cmp = icmp eq i8 %spec.select.i, %spec.select.i53
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr12 = getelementptr i8, ptr %s.061, i32 1
  %dec13 = add i32 %len.addr.059, -1
  %incdec.ptr14 = getelementptr i8, ptr %p.062, i32 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  br i1 %star.0.off063, label %if.end17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr18 = getelementptr i8, ptr %str.addr.058, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end17, %if.then11, %sw.bb4.sw.epilog_crit_edge, %sw.bb
  %str.addr.1 = phi ptr [ %str.addr.058, %if.then11 ], [ %incdec.ptr18, %if.end17 ], [ %str.addr.058, %sw.bb ], [ %s.061, %sw.bb4.sw.epilog_crit_edge ]
  %len.addr.1 = phi i32 [ %dec13, %if.then11 ], [ %len.addr.059, %if.end17 ], [ %dec, %sw.bb ], [ %len.addr.059, %sw.bb4.sw.epilog_crit_edge ]
  %pattern.addr.1 = phi ptr [ %pattern.addr.060, %if.then11 ], [ %pattern.addr.060, %if.end17 ], [ %pattern.addr.060, %sw.bb ], [ %incdec.ptr5, %sw.bb4.sw.epilog_crit_edge ]
  %s.1 = phi ptr [ %incdec.ptr12, %if.then11 ], [ %incdec.ptr18, %if.end17 ], [ %incdec.ptr, %sw.bb ], [ %s.061, %sw.bb4.sw.epilog_crit_edge ]
  %p.1 = phi ptr [ %incdec.ptr14, %if.then11 ], [ %pattern.addr.060, %if.end17 ], [ %incdec.ptr3, %sw.bb ], [ %incdec.ptr5, %sw.bb4.sw.epilog_crit_edge ]
  %star.1.off0 = phi i1 [ %star.0.off063, %if.then11 ], [ true, %if.end17 ], [ %star.0.off063, %sw.bb ], [ true, %sw.bb4.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %s.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %tobool1.not = icmp eq i32 %len.addr.1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %pattern, %entry.while.end_crit_edge ], [ %p.1, %sw.epilog.while.end_crit_edge ]
  %16 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p.0.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %17)
  %cmp21 = icmp eq i8 %17, 42
  %spec.select.idx = zext i1 %cmp21 to i32
  %spec.select = getelementptr i8, ptr %p.0.lcssa, i32 %spec.select.idx
  %18 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %spec.select, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool26.not = icmp eq i8 %19, 0
  %lnot.ext = zext i1 %tobool26.not to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %while.end ], [ 0, %if.else.cleanup_crit_edge ], [ 1, %sw.bb4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_validate_filename(ptr nocapture noundef readonly %filename) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %filename to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %filename, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not19 = icmp eq i8 %1, 0
  br i1 %tobool.not19, label %entry.return_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %6, %cleanup.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %filename.addr.020 = phi ptr [ %incdec.ptr, %cleanup.while.body_crit_edge ], [ %filename, %entry.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %filename.addr.020, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not.i = icmp sgt i8 %2, -1
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp.i = icmp ult i8 %2, 32
  br i1 %cmp.i, label %land.lhs.true.i.do.body_crit_edge, label %switch.early.test.i

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

switch.early.test.i:                              ; preds = %land.lhs.true.i
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %2, label %switch.early.test.i.cleanup_crit_edge [
    i8 124, label %switch.early.test.i.do.body_crit_edge
    i8 63, label %switch.early.test.i.do.body_crit_edge26
    i8 62, label %switch.early.test.i.do.body_crit_edge27
    i8 60, label %switch.early.test.i.do.body_crit_edge28
    i8 42, label %switch.early.test.i.do.body_crit_edge29
    i8 34, label %switch.early.test.i.do.body_crit_edge30
  ]

switch.early.test.i.do.body_crit_edge30:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

switch.early.test.i.do.body_crit_edge29:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

switch.early.test.i.do.body_crit_edge28:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

switch.early.test.i.do.body_crit_edge27:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

switch.early.test.i.do.body_crit_edge26:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

switch.early.test.i.do.body_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

switch.early.test.i.cleanup_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %switch.early.test.i.do.body_crit_edge, %switch.early.test.i.do.body_crit_edge26, %switch.early.test.i.do.body_crit_edge27, %switch.early.test.i.do.body_crit_edge28, %switch.early.test.i.do.body_crit_edge29, %switch.early.test.i.do.body_crit_edge30, %land.lhs.true.i.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %4 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %2 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #17
  br label %return

cleanup:                                          ; preds = %switch.early.test.i.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %do.end, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ -2, %do.body.return_crit_edge ], [ -2, %do.end ], [ 0, %entry.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_stream_name(ptr noundef %filename, ptr nocapture noundef writeonly %stream_name, ptr nocapture noundef writeonly %s_type) local_unnamed_addr #2 align 64 {
entry:
  %stream_type = alloca ptr, align 4
  %s_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stream_type) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_name) #14
  %0 = ptrtoint ptr %s_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %filename, ptr %s_name, align 4
  %call = call ptr @strsep(ptr noundef nonnull %s_name, ptr noundef nonnull @.str.3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %s_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_name, align 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %call, ptr noundef %3) #17
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %4 = ptrtoint ptr %s_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_name, align 4
  %call5 = call ptr @strchr(ptr noundef %5, i32 noundef 58)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end4.if.end33_crit_edge, label %if.then7

do.end4.if.end33_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then7:                                         ; preds = %do.end4
  %6 = ptrtoint ptr %stream_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %stream_type, align 4
  %call8 = call ptr @strsep(ptr noundef nonnull %stream_type, ptr noundef nonnull @.str.3) #14
  %7 = ptrtoint ptr %s_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %s_name, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then7
  %stream_name.addr.0.i = phi ptr [ %call8, %if.then7 ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %8 = ptrtoint ptr %stream_name.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stream_name.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.body12, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i8, ptr %stream_name.addr.0.i, i32 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %9, label %while.body.i.while.cond.i_crit_edge [
    i8 47, label %while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge
    i8 58, label %while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge45
    i8 92, label %while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge46
  ]

while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge46: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_validate_stream_name.exit.thread

while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge45: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_validate_stream_name.exit.thread

while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_validate_stream_name.exit.thread

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

ksmbd_validate_stream_name.exit.thread:           ; preds = %while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge, %while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge45, %while.body.i.ksmbd_validate_stream_name.exit.thread_crit_edge46
  %conv.i = zext i8 %9 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i) #17
  br label %out

do.body12:                                        ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %11 = load i32, ptr @ksmbd_debug_types, align 4
  %and13 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end23_crit_edge, label %do.end18

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %s_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_name, align 4
  %14 = ptrtoint ptr %stream_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream_type, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %13, ptr noundef %15) #17
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body12.do.end23_crit_edge
  %16 = ptrtoint ptr %stream_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream_type, align 4
  %call24 = call i32 @strncasecmp(ptr noundef nonnull @.str.9, ptr noundef %17, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end23.if.end33.sink.split_crit_edge, label %if.else

do.end23.if.end33.sink.split_crit_edge:           ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.sink.split

if.else:                                          ; preds = %do.end23
  %call27 = call i32 @strncasecmp(ptr noundef nonnull @.str.10, ptr noundef %17, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else.if.end33.sink.split_crit_edge, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.else.if.end33.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.else.if.end33.sink.split_crit_edge, %do.end23.if.end33.sink.split_crit_edge
  %.sink = phi i32 [ 1, %do.end23.if.end33.sink.split_crit_edge ], [ 2, %if.else.if.end33.sink.split_crit_edge ]
  %18 = ptrtoint ptr %s_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %s_type, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else.if.end33_crit_edge, %do.end4.if.end33_crit_edge
  %rc.0 = phi i32 [ 0, %do.end4.if.end33_crit_edge ], [ -2, %if.else.if.end33_crit_edge ], [ 0, %if.end33.sink.split ]
  %19 = ptrtoint ptr %s_name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_name, align 4
  %21 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %stream_name, align 4
  br label %out

out:                                              ; preds = %if.end33, %ksmbd_validate_stream_name.exit.thread
  %rc.1 = phi i32 [ %rc.0, %if.end33 ], [ -2, %ksmbd_validate_stream_name.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_name) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stream_type) #14
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @convert_to_nt_pathname(ptr noundef %filename) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %filename to i32
  call void @__asan_load1_noabort(i32 %0)
  %char0 = load i8, ptr %filename, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp = icmp eq i8 %char0, 0
  %spec.store.select = select i1 %cmp, ptr @.str.11, ptr %filename
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %spec.store.select, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @strreplace(ptr noundef nonnull %call1, i8 noundef zeroext 47, i8 noundef zeroext 92) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret ptr %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_conv_path_to_windows(ptr noundef %path) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strreplace(ptr noundef %path, i8 noundef zeroext 47, i8 noundef zeroext 92) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_nlink(ptr nocapture noundef readonly %st) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nlink1 = getelementptr inbounds %struct.kstat, ptr %st, i32 0, i32 2
  %0 = ptrtoint ptr %nlink1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlink1, align 8
  %mode = getelementptr inbounds %struct.kstat, ptr %st, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  %dec = sext i1 %cmp to i32
  %spec.select = add i32 %1, %dec
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_conv_path_to_unix(ptr noundef %path) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strreplace(ptr noundef %path, i8 noundef zeroext 92, i8 noundef zeroext 47) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_strip_last_slash(ptr nocapture noundef %path) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %path) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not9 = icmp eq i32 %call, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %len.010 = phi i32 [ %sub, %while.body.land.rhs_crit_edge ], [ %call, %entry.land.rhs_crit_edge ]
  %sub = add i32 %len.010, -1
  %arrayidx = getelementptr i8, ptr %path, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp eq i8 %1, 47
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_extract_sharename(ptr noundef %treename) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strrchr(ptr noundef %treename, i32 noundef 92)
  %tobool.not = icmp eq ptr %call, null
  %add.ptr = getelementptr i8, ptr %call, i32 1
  %spec.select = select i1 %tobool.not, ptr %treename, ptr %add.ptr
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %spec.select, i32 noundef 3264) #14
  %tobool2.not = icmp eq ptr %call1, null
  %spec.select11 = select i1 %tobool2.not, ptr inttoptr (i32 -12 to ptr), ptr %call1
  ret ptr %spec.select11
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @convert_to_unix_name(ptr nocapture noundef readonly %share, ptr nocapture noundef readonly %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp eq i8 %1, 47
  %spec.select.idx = zext i1 %cmp to i32
  %spec.select = getelementptr i8, ptr %name, i32 %spec.select.idx
  %path_sz = getelementptr inbounds %struct.ksmbd_share_config, ptr %share, i32 0, i32 2
  %2 = ptrtoint ptr %path_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %path_sz, align 4
  %call = tail call i32 @strlen(ptr noundef %spec.select) #18
  %add = add i32 %call, %3
  %add2 = add i32 %add, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 3264) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %entry
  %path = getelementptr inbounds %struct.ksmbd_share_config, ptr %share, i32 0, i32 1
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %6 = call ptr @memcpy(ptr %call9.i, ptr %5, i32 %3)
  %sub = add i32 %3, -1
  %arrayidx6 = getelementptr i8, ptr %call9.i, i32 %sub
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %8)
  %cmp8.not = icmp eq i8 %8, 47
  br i1 %cmp8.not, label %if.end5.if.end12_crit_edge, label %if.then10

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx11 = getelementptr i8, ptr %call9.i, i32 %3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 47, ptr %arrayidx11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  %no_slash.0 = phi i32 [ 1, %if.then10 ], [ 0, %if.end5.if.end12_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %3
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %no_slash.0
  %10 = call ptr @memcpy(ptr %add.ptr13, ptr %spec.select, i32 %call)
  %add15 = add i32 %add, %no_slash.0
  %arrayidx16 = getelementptr i8, ptr %call9.i, i32 %add15
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx16, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.1.i43 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call9.i, %if.end12 ]
  ret ptr %retval.1.i43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_convert_dir_info_name(ptr nocapture noundef readonly %d_info, ptr noundef %local_nls, ptr nocapture noundef writeonly %conv_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %name_len = getelementptr inbounds %struct.ksmbd_dir_info, ptr %d_info, i32 0, i32 3
  %0 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name_len, align 4
  %mul = shl i32 %1, 2
  %2 = tail call i32 @llvm.smin.i32(i32 %mul, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #19
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %if.end8.i.cleanup_crit_edge, label %if.end4

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %d_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_info, align 4
  %5 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name_len, align 4
  %call6 = tail call i32 @smbConvertToUTF16(ptr noundef nonnull %call9.i, ptr noundef %4, i32 noundef %6, ptr noundef %local_nls, i32 noundef 0) #14
  %mul7 = shl i32 %call6, 1
  %7 = ptrtoint ptr %conv_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul7, ptr %conv_len, align 4
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %mul7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 2
  %add = or i32 %mul7, 1
  %arrayidx8 = getelementptr i8, ptr %call9.i, i32 %add
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smbConvertToUTF16(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_NTtimeToUnix(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %agg.result, i64 noundef %ntutc) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %ntutc)
  %sub = add i64 %2, -116444736000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.then220

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub1 = sub i64 116444736000000000, %2
  %conv18 = trunc i64 %sub1 to i32
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub1) #20, !srcloc !37
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub1, i64 %3, i32 0) #20, !srcloc !38
  %asmresult10.i = extractvalue { i64, i32 } %4, 0
  %div162576 = lshr i64 %asmresult10.i, 23
  %conv163 = trunc i64 %div162576 to i32
  %mul164.neg = mul i32 %conv163, -10000000
  %sub165 = add i32 %mul164.neg, %conv18
  %mul184.neg = mul i32 %sub165, -100
  %sub188 = sub nsw i64 0, %div162576
  br label %if.end414

if.then220:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv223 = trunc i64 %sub to i32
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub) #20, !srcloc !37
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub, i64 %5, i32 0) #20, !srcloc !38
  %asmresult10.i577 = extractvalue { i64, i32 } %6, 0
  %div385575 = lshr i64 %asmresult10.i577, 23
  %conv386 = trunc i64 %div385575 to i32
  %mul387.neg = mul i32 %conv386, -10000000
  %sub388 = add i32 %mul387.neg, %conv223
  %mul411 = mul i32 %sub388, 100
  br label %if.end414

if.end414:                                        ; preds = %if.then220, %if.then
  %mul411.sink = phi i32 [ %mul184.neg, %if.then ], [ %mul411, %if.then220 ]
  %storemerge = phi i64 [ %sub188, %if.then ], [ %div385575, %if.then220 ]
  %7 = getelementptr inbounds %struct.timespec64, ptr %agg.result, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul411.sink, ptr %7, align 8
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %storemerge, ptr %agg.result, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ksmbd_UnixTimeToNT([2 x i64] %t.coerce) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %t.coerce.fca.0.extract = extractvalue [2 x i64] %t.coerce, 0
  %t.coerce.fca.1.extract = extractvalue [2 x i64] %t.coerce, 1
  %t.sroa.2.8.extract.shift = lshr i64 %t.coerce.fca.1.extract, 32
  %t.sroa.2.8.extract.trunc = trunc i64 %t.sroa.2.8.extract.shift to i32
  %mul = mul i64 %t.coerce.fca.0.extract, 10000000
  %div = sdiv i32 %t.sroa.2.8.extract.trunc, 100
  %conv = sext i32 %div to i64
  %add = add i64 %mul, 116444736000000000
  %add1 = add i64 %add, %conv
  ret i64 %add1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ksmbd_systime() local_unnamed_addr #12 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #14
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #14
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %1)
  %.fca.0.load = load i64, ptr %ts, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %t.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %t.sroa.2.8.extract.trunc.i = trunc i64 %t.sroa.2.8.extract.shift.i to i32
  %mul.i = mul i64 %.fca.0.load, 10000000
  %div.i = sdiv i32 %t.sroa.2.8.extract.trunc.i, 100
  %conv.i = sext i32 %div.i to i64
  %add.i = add i64 %mul.i, 116444736000000000
  %add1.i = add i64 %add.i, %conv.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #14
  ret i64 %add1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/misc.c", i32 95, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ksmbd_validate_filename._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ksmbd_validate_filename._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/misc.c", i32 125, i32 29}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ksmbd/misc.c", i32 126, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @parse_stream_name._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @parse_stream_name._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ksmbd/misc.c", i32 137, i32 3}
!15 = !{ptr @parse_stream_name._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @parse_stream_name._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ksmbd/misc.c", i32 139, i32 20}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ksmbd/misc.c", i32 141, i32 25}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ksmbd/misc.c", i32 166, i32 14}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ksmbd/misc.c", i32 110, i32 4}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ksmbd_validate_stream_name._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ksmbd_validate_stream_name._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 1119218, i64 1119245}
!38 = !{i64 1119913, i64 1119940, i64 1119973, i64 1119994, i64 1120021, i64 1120047}
