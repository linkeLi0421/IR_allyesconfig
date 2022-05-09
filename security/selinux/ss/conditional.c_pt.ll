; ModuleID = '/llk/IR_all_yes/security/selinux/ss/conditional.c_pt.bc'
source_filename = "../security/selinux/ss/conditional.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.policydb = type { i32, [8 x %struct.symtab], [8 x ptr], ptr, ptr, ptr, ptr, %struct.avtab, %struct.hashtab, %struct.ebitmap, %struct.hashtab, i32, ptr, %struct.avtab, ptr, i32, ptr, [9 x ptr], ptr, %struct.hashtab, ptr, %struct.ebitmap, %struct.ebitmap, i32, i32, i8, i16, i32 }
%struct.symtab = type { %struct.hashtab, i32 }
%struct.avtab = type { ptr, i32, i32, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.ebitmap = type { ptr, i32 }
%struct.cond_node = type { i32, %struct.cond_expr, %struct.cond_av_list, %struct.cond_av_list }
%struct.cond_expr = type { ptr, i32 }
%struct.cond_av_list = type { ptr, i32 }
%struct.cond_expr_node = type { i32, i32 }
%struct.cond_bool_datum = type { i32, i32 }
%struct.avtab_key = type { i16, i16, i16, i16 }
%struct.policy_file = type { ptr, i32 }
%struct.policy_data = type { ptr, ptr }
%struct.av_decision = type { i32, i32, i32, i32, i32 }
%struct.avtab_node = type { %struct.avtab_key, %struct.avtab_datum, ptr }
%struct.avtab_datum = type { %union.anon }
%union.anon = type { i32 }
%struct.cond_insertf_data = type { ptr, ptr, ptr }
%struct.hashtab_node = type { ptr, ptr, ptr }

@evaluate_cond_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013SELinux: expression result was undefined - disabling all rules.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"evaluate_cond_node\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/selinux/ss/conditional.c\00", [62 x i8] zeroinitializer }, align 32
@evaluate_cond_node._entry_ptr = internal global ptr @evaluate_cond_node._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@expr_node_isvalid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013SELinux: conditional expressions uses unknown operator.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"expr_node_isvalid\00", [46 x i8] zeroinitializer }, align 32
@expr_node_isvalid._entry_ptr = internal global ptr @expr_node_isvalid._entry, section ".printk_index", align 4
@expr_node_isvalid._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013SELinux: conditional expressions uses unknown bool.\0A\00", [41 x i8] zeroinitializer }, align 32
@expr_node_isvalid._entry_ptr.7 = internal global ptr @expr_node_isvalid._entry.5, section ".printk_index", align 4
@cond_insertf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013SELinux: type rule already exists outside of a conditional.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cond_insertf\00", [19 x i8] zeroinitializer }, align 32
@cond_insertf._entry_ptr = internal global ptr @cond_insertf._entry, section ".printk_index", align 4
@cond_insertf._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013SELinux: too many conflicting type rules.\0A\00", [51 x i8] zeroinitializer }, align 32
@cond_insertf._entry_ptr.12 = internal global ptr @cond_insertf._entry.10, section ".printk_index", align 4
@cond_insertf._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013SELinux: conflicting type rules.\0A\00", [60 x i8] zeroinitializer }, align 32
@cond_insertf._entry_ptr.15 = internal global ptr @cond_insertf._entry.13, section ".printk_index", align 4
@cond_insertf._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013SELinux: conflicting type rules when adding type rule for true.\0A\00", [61 x i8] zeroinitializer }, align 32
@cond_insertf._entry_ptr.18 = internal global ptr @cond_insertf._entry.16, section ".printk_index", align 4
@cond_insertf._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013SELinux: could not insert rule.\0A\00", [61 x i8] zeroinitializer }, align 32
@cond_insertf._entry_ptr.21 = internal global ptr @cond_insertf._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 102, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 365, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 370, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 276, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 291, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 302, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 308, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [37 x i8] c"../security/selinux/ss/conditional.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 316, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @cond_insertf._entry, ptr @cond_insertf._entry.10, ptr @cond_insertf._entry.13, ptr @cond_insertf._entry.16, ptr @cond_insertf._entry.19, ptr @cond_insertf._entry_ptr, ptr @cond_insertf._entry_ptr.12, ptr @cond_insertf._entry_ptr.15, ptr @cond_insertf._entry_ptr.18, ptr @cond_insertf._entry_ptr.21, ptr @evaluate_cond_node._entry, ptr @evaluate_cond_node._entry_ptr, ptr @expr_node_isvalid._entry, ptr @expr_node_isvalid._entry.5, ptr @expr_node_isvalid._entry_ptr, ptr @expr_node_isvalid._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evaluate_cond_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expr_node_isvalid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expr_node_isvalid._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cond_insertf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cond_insertf._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cond_insertf._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cond_insertf._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cond_insertf._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evaluate_cond_nodes(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  %s.i.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 15
  %0 = ptrtoint ptr %cond_list_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cond_list_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cond_list = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 14
  %bool_val_to_struct.i.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %evaluate_cond_node.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %evaluate_cond_node.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %cond_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond_list, align 4
  %arrayidx = getelementptr %struct.cond_node, ptr %3, i32 %i.06
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %s.i.i) #11
  %4 = call ptr @memset(ptr %s.i.i, i32 255, i32 40)
  %len.i.i = getelementptr %struct.cond_node, ptr %3, i32 %i.06, i32 1, i32 1
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i, label %for.body.cond_evaluate_expr.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.cond_evaluate_expr.exit.i_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body
  %expr.i = getelementptr %struct.cond_node, ptr %3, i32 %i.06, i32 1
  %7 = ptrtoint ptr %expr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %expr.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %sp.0100.i.i = phi i32 [ -1, %for.body.lr.ph.i.i ], [ %sp.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.098.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc58.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.cond_expr_node, ptr %8, i32 %i.098.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %for.body.i.i.cond_evaluate_expr.exit.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb8.i.i
    i32 3, label %sw.bb14.i.i
    i32 4, label %sw.bb20.i.i
    i32 5, label %sw.bb28.i.i
    i32 6, label %sw.bb36.i.i
    i32 7, label %sw.bb46.i.i
  ]

for.body.i.i.cond_evaluate_expr.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sp.0100.i.i)
  %cmp3.i.i = icmp eq i32 %sp.0100.i.i, 9
  br i1 %cmp3.i.i, label %sw.bb.i.i.cond_evaluate_expr.exit.i_crit_edge, label %if.end5.i.i

sw.bb.i.i.cond_evaluate_expr.exit.i_crit_edge:    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

if.end5.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i = add i32 %sp.0100.i.i, 1
  %12 = ptrtoint ptr %bool_val_to_struct.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bool_val_to_struct.i.i, align 4
  %bool.i.i = getelementptr %struct.cond_expr_node, ptr %8, i32 %i.098.i.i, i32 1
  %14 = ptrtoint ptr %bool.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bool.i.i, align 4
  %sub.i.i = add i32 %15, -1
  %arrayidx6.i.i = getelementptr ptr, ptr %13, i32 %sub.i.i
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.cond_bool_datum, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i.i, align 4
  %arrayidx7.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %inc.i.i
  %20 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx7.i.i, align 4
  br label %for.inc.i.i

sw.bb8.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sp.0100.i.i)
  %cmp9.i.i = icmp slt i32 %sp.0100.i.i, 0
  br i1 %cmp9.i.i, label %sw.bb8.i.i.cond_evaluate_expr.exit.i_crit_edge, label %if.end11.i.i

sw.bb8.i.i.cond_evaluate_expr.exit.i_crit_edge:   ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

if.end11.i.i:                                     ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %sp.0100.i.i
  %21 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  %lnot.ext.i.i = zext i1 %tobool.not.i.i to i32
  %23 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %lnot.ext.i.i, ptr %arrayidx12.i.i, align 4
  br label %for.inc.i.i

sw.bb14.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sp.0100.i.i)
  %cmp15.i.i = icmp slt i32 %sp.0100.i.i, 1
  br i1 %cmp15.i.i, label %sw.bb14.i.i.cond_evaluate_expr.exit.i_crit_edge, label %if.end17.i.i

sw.bb14.i.i.cond_evaluate_expr.exit.i_crit_edge:  ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

if.end17.i.i:                                     ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.i = add nsw i32 %sp.0100.i.i, -1
  %arrayidx18.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %sp.0100.i.i
  %24 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18.i.i, align 4
  %arrayidx19.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %dec.i.i
  %26 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19.i.i, align 4
  %or.i.i = or i32 %27, %25
  store i32 %or.i.i, ptr %arrayidx19.i.i, align 4
  br label %for.inc.i.i

sw.bb20.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sp.0100.i.i)
  %cmp21.i.i = icmp slt i32 %sp.0100.i.i, 1
  br i1 %cmp21.i.i, label %sw.bb20.i.i.cond_evaluate_expr.exit.i_crit_edge, label %if.end23.i.i

sw.bb20.i.i.cond_evaluate_expr.exit.i_crit_edge:  ; preds = %sw.bb20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

if.end23.i.i:                                     ; preds = %sw.bb20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec24.i.i = add nsw i32 %sp.0100.i.i, -1
  %arrayidx26.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %sp.0100.i.i
  %28 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx26.i.i, align 4
  %arrayidx27.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %dec24.i.i
  %30 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx27.i.i, align 4
  %and.i.i = and i32 %31, %29
  store i32 %and.i.i, ptr %arrayidx27.i.i, align 4
  br label %for.inc.i.i

sw.bb28.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sp.0100.i.i)
  %cmp29.i.i = icmp slt i32 %sp.0100.i.i, 1
  br i1 %cmp29.i.i, label %sw.bb28.i.i.cond_evaluate_expr.exit.i_crit_edge, label %if.end31.i.i

sw.bb28.i.i.cond_evaluate_expr.exit.i_crit_edge:  ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

if.end31.i.i:                                     ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec32.i.i = add nsw i32 %sp.0100.i.i, -1
  %arrayidx34.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %sp.0100.i.i
  %32 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx34.i.i, align 4
  %arrayidx35.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %dec32.i.i
  %34 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx35.i.i, align 4
  %xor.i.i = xor i32 %35, %33
  store i32 %xor.i.i, ptr %arrayidx35.i.i, align 4
  br label %for.inc.i.i

sw.bb36.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sp.0100.i.i)
  %cmp37.i.i = icmp slt i32 %sp.0100.i.i, 1
  br i1 %cmp37.i.i, label %sw.bb36.i.i.cond_evaluate_expr.exit.i_crit_edge, label %if.end39.i.i

sw.bb36.i.i.cond_evaluate_expr.exit.i_crit_edge:  ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

if.end39.i.i:                                     ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec40.i.i = add nsw i32 %sp.0100.i.i, -1
  %arrayidx41.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %dec40.i.i
  %36 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx41.i.i, align 4
  %arrayidx43.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %sp.0100.i.i
  %38 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx43.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp44.i.i = icmp eq i32 %37, %39
  %conv.i.i = zext i1 %cmp44.i.i to i32
  %40 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i.i, ptr %arrayidx41.i.i, align 4
  br label %for.inc.i.i

sw.bb46.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sp.0100.i.i)
  %cmp47.i.i = icmp slt i32 %sp.0100.i.i, 1
  br i1 %cmp47.i.i, label %sw.bb46.i.i.cond_evaluate_expr.exit.i_crit_edge, label %if.end50.i.i

sw.bb46.i.i.cond_evaluate_expr.exit.i_crit_edge:  ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_evaluate_expr.exit.i

if.end50.i.i:                                     ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec51.i.i = add nsw i32 %sp.0100.i.i, -1
  %arrayidx52.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %dec51.i.i
  %41 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx52.i.i, align 4
  %arrayidx54.i.i = getelementptr [10 x i32], ptr %s.i.i, i32 0, i32 %sp.0100.i.i
  %43 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx54.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp55.i.i = icmp ne i32 %42, %44
  %conv56.i.i = zext i1 %cmp55.i.i to i32
  %45 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv56.i.i, ptr %arrayidx52.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end50.i.i, %if.end39.i.i, %if.end31.i.i, %if.end23.i.i, %if.end17.i.i, %if.end11.i.i, %if.end5.i.i
  %sp.2.i.i = phi i32 [ %dec51.i.i, %if.end50.i.i ], [ %dec40.i.i, %if.end39.i.i ], [ %dec32.i.i, %if.end31.i.i ], [ %dec24.i.i, %if.end23.i.i ], [ %dec.i.i, %if.end17.i.i ], [ %sp.0100.i.i, %if.end11.i.i ], [ %inc.i.i, %if.end5.i.i ]
  %inc58.i.i = add nuw i32 %i.098.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc58.i.i, %6
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s.i.i, align 4
  br label %cond_evaluate_expr.exit.i

cond_evaluate_expr.exit.i:                        ; preds = %for.end.i.i, %sw.bb46.i.i.cond_evaluate_expr.exit.i_crit_edge, %sw.bb36.i.i.cond_evaluate_expr.exit.i_crit_edge, %sw.bb28.i.i.cond_evaluate_expr.exit.i_crit_edge, %sw.bb20.i.i.cond_evaluate_expr.exit.i_crit_edge, %sw.bb14.i.i.cond_evaluate_expr.exit.i_crit_edge, %sw.bb8.i.i.cond_evaluate_expr.exit.i_crit_edge, %sw.bb.i.i.cond_evaluate_expr.exit.i_crit_edge, %for.body.i.i.cond_evaluate_expr.exit.i_crit_edge, %for.body.cond_evaluate_expr.exit.i_crit_edge
  %retval.2.i.i = phi i32 [ %47, %for.end.i.i ], [ -1, %for.body.cond_evaluate_expr.exit.i_crit_edge ], [ -1, %for.body.i.i.cond_evaluate_expr.exit.i_crit_edge ], [ -1, %sw.bb.i.i.cond_evaluate_expr.exit.i_crit_edge ], [ -1, %sw.bb8.i.i.cond_evaluate_expr.exit.i_crit_edge ], [ -1, %sw.bb14.i.i.cond_evaluate_expr.exit.i_crit_edge ], [ -1, %sw.bb20.i.i.cond_evaluate_expr.exit.i_crit_edge ], [ -1, %sw.bb28.i.i.cond_evaluate_expr.exit.i_crit_edge ], [ -1, %sw.bb36.i.i.cond_evaluate_expr.exit.i_crit_edge ], [ -1, %sw.bb46.i.i.cond_evaluate_expr.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %s.i.i) #11
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i.i, i32 %49)
  %cmp.not.i = icmp eq i32 %retval.2.i.i, %49
  br i1 %cmp.not.i, label %cond_evaluate_expr.exit.i.evaluate_cond_node.exit_crit_edge, label %if.then.i

cond_evaluate_expr.exit.i.evaluate_cond_node.exit_crit_edge: ; preds = %cond_evaluate_expr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evaluate_cond_node.exit

if.then.i:                                        ; preds = %cond_evaluate_expr.exit.i
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.2.i.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.2.i.i)
  %cmp2.i = icmp eq i32 %retval.2.i.i, -1
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %len.i = getelementptr %struct.cond_node, ptr %3, i32 %i.06, i32 2, i32 1
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp558.not.i = icmp eq i32 %52, 0
  br i1 %cmp558.not.i, label %if.end.i.for.cond15.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.cond15.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %true_list.i = getelementptr %struct.cond_node, ptr %3, i32 %i.06, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.2.i.i)
  %cmp7.i = icmp slt i32 %retval.2.i.i, 1
  %masksel.i = select i1 %cmp7.i, i16 0, i16 -32768
  br label %for.body.i

for.cond15.preheader.i:                           ; preds = %for.body.i.for.cond15.preheader.i_crit_edge, %if.end.i.for.cond15.preheader.i_crit_edge
  %len16.i = getelementptr %struct.cond_node, ptr %3, i32 %i.06, i32 3, i32 1
  %53 = ptrtoint ptr %len16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp1760.not.i = icmp eq i32 %54, 0
  br i1 %cmp1760.not.i, label %for.cond15.preheader.i.evaluate_cond_node.exit_crit_edge, label %for.body19.lr.ph.i

for.cond15.preheader.i.evaluate_cond_node.exit_crit_edge: ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evaluate_cond_node.exit

for.body19.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %false_list.i = getelementptr %struct.cond_node, ptr %3, i32 %i.06, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %tobool.not.i = icmp eq i32 %retval.2.i.i, 0
  %masksel63.i = select i1 %tobool.not.i, i16 -32768, i16 0
  br label %for.body19.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %true_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %true_list.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %56, i32 %i.059.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %specified.i = getelementptr inbounds %struct.avtab_key, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %specified.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %specified.i, align 2
  %61 = and i16 %60, 32767
  %.sink.i = or i16 %61, %masksel.i
  store i16 %.sink.i, ptr %specified.i, align 2
  %inc.i = add nuw i32 %i.059.i, 1
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %63
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond15.preheader.i_crit_edge

for.body.i.for.cond15.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %i.161.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %inc37.i, %for.body19.i.for.body19.i_crit_edge ]
  %64 = ptrtoint ptr %false_list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %false_list.i, align 4
  %arrayidx22.i = getelementptr ptr, ptr %65, i32 %i.161.i
  %66 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx22.i, align 4
  %specified31.i = getelementptr inbounds %struct.avtab_key, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %specified31.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %specified31.i, align 2
  %70 = and i16 %69, 32767
  %.sink62.i = or i16 %70, %masksel63.i
  store i16 %.sink62.i, ptr %specified31.i, align 2
  %inc37.i = add nuw i32 %i.161.i, 1
  %71 = ptrtoint ptr %len16.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len16.i, align 4
  %cmp17.i = icmp ult i32 %inc37.i, %72
  br i1 %cmp17.i, label %for.body19.i.for.body19.i_crit_edge, label %for.body19.i.evaluate_cond_node.exit_crit_edge

for.body19.i.evaluate_cond_node.exit_crit_edge:   ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evaluate_cond_node.exit

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19.i

evaluate_cond_node.exit:                          ; preds = %for.body19.i.evaluate_cond_node.exit_crit_edge, %for.cond15.preheader.i.evaluate_cond_node.exit_crit_edge, %cond_evaluate_expr.exit.i.evaluate_cond_node.exit_crit_edge
  %inc = add nuw i32 %i.06, 1
  %73 = ptrtoint ptr %cond_list_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cond_list_len, align 4
  %cmp = icmp ult i32 %inc, %74
  br i1 %cmp, label %evaluate_cond_node.exit.for.body_crit_edge, label %evaluate_cond_node.exit.for.end_crit_edge

evaluate_cond_node.exit.for.end_crit_edge:        ; preds = %evaluate_cond_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

evaluate_cond_node.exit.for.body_crit_edge:       ; preds = %evaluate_cond_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %evaluate_cond_node.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cond_policydb_init(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %bool_val_to_struct to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bool_val_to_struct, align 4
  %cond_list = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 14
  %1 = ptrtoint ptr %cond_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cond_list, align 4
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 15
  %2 = ptrtoint ptr %cond_list_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cond_list_len, align 4
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 13
  tail call void @avtab_init(ptr noundef %te_cond_avtab) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @avtab_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cond_policydb_destroy(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %bool_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bool_val_to_struct, align 4
  tail call void @kfree(ptr noundef %1) #11
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 13
  tail call void @avtab_destroy(ptr noundef %te_cond_avtab) #11
  %cond_list_len.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 15
  %2 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cond_list_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %entry.cond_list_destroy.exit_crit_edge, label %for.body.lr.ph.i

entry.cond_list_destroy.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_list_destroy.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %cond_list.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %cond_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cond_list.i, align 4
  %expr.i.i = getelementptr %struct.cond_node, ptr %5, i32 %i.011.i, i32 1
  %6 = ptrtoint ptr %expr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %expr.i.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  %true_list.i.i = getelementptr %struct.cond_node, ptr %5, i32 %i.011.i, i32 2
  %8 = ptrtoint ptr %true_list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %true_list.i.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %false_list.i.i = getelementptr %struct.cond_node, ptr %5, i32 %i.011.i, i32 3
  %10 = ptrtoint ptr %false_list.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %false_list.i.i, align 4
  tail call void @kfree(ptr noundef %11) #11
  %inc.i = add nuw i32 %i.011.i, 1
  %12 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cond_list_len.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cond_list_destroy.exit_crit_edge

for.body.i.cond_list_destroy.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_list_destroy.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cond_list_destroy.exit:                           ; preds = %for.body.i.cond_list_destroy.exit_crit_edge, %entry.cond_list_destroy.exit_crit_edge
  %cond_list1.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 14
  %14 = ptrtoint ptr %cond_list1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cond_list1.i, align 4
  tail call void @kfree(ptr noundef %15) #11
  %16 = ptrtoint ptr %cond_list1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cond_list1.i, align 4
  %17 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cond_list_len.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @avtab_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cond_init_bool_indexes(ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %bool_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bool_val_to_struct, align 4
  tail call void @kfree(ptr noundef %1) #11
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 5, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #11
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !45

entry.kmalloc_array.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #15
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %entry.kmalloc_array.exit_crit_edge
  %retval.0.i = phi ptr [ %call8.i, %if.end7.i ], [ null, %entry.kmalloc_array.exit_crit_edge ]
  %7 = ptrtoint ptr %bool_val_to_struct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i, ptr %bool_val_to_struct, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cond_destroy_bool(ptr noundef %key, ptr noundef %datum, ptr nocapture readnone %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #11
  tail call void @kfree(ptr noundef %datum) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cond_index_bool(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readonly %datap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nprim = getelementptr %struct.policydb, ptr %datap, i32 0, i32 1, i32 5, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx2 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %sub = add i32 %1, -1
  %arrayidx4 = getelementptr ptr, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %key, ptr %arrayidx4, align 4
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 12
  %7 = ptrtoint ptr %bool_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bool_val_to_struct, align 4
  %9 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %datum, align 4
  %sub6 = add i32 %10, -1
  %arrayidx7 = getelementptr ptr, ptr %8, i32 %sub6
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %datum, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cond_read_bool(ptr nocapture noundef readnone %p, ptr noundef %s, ptr nocapture noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp.i49 = icmp ult i32 %2, 12
  br i1 %cmp.i49, label %if.end.err_crit_edge, label %if.end4

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %4, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 4
  %6 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %7 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %buf.sroa.7.0.copyload = load i32, ptr %buf.sroa.7.0..sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -12
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %len.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call7.i.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.5.0.copyload)
  %state = getelementptr inbounds %struct.cond_bool_datum, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %switch.i = icmp ugt i32 %11, 1
  br i1 %switch.i, label %if.end4.err_crit_edge, label %if.end9

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end9:                                          ; preds = %if.end4
  %13 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload)
  %14 = zext i32 %buf.sroa.7.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %buf.sroa.7.0.copyload, label %if.end8.i [
    i32 0, label %if.end9.err_crit_edge
    i32 -1, label %if.end9.err_crit_edge71
  ]

if.end9.err_crit_edge71:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end8.i:                                        ; preds = %if.end9
  %add = add i32 %13, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.end8.i.err_crit_edge, label %if.end17

if.end8.i.err_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end17:                                         ; preds = %if.end8.i
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %13)
  %cmp.i52 = icmp ult i32 %16, %13
  br i1 %cmp.i52, label %if.end17.err_crit_edge, label %if.end21

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end21:                                         ; preds = %if.end17
  %17 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fp, align 4
  %19 = call ptr @memcpy(ptr %call9.i, ptr %18, i32 %13)
  %add.ptr.i53 = getelementptr i8, ptr %18, i32 %13
  store ptr %add.ptr.i53, ptr %fp, align 4
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %sub.i54 = sub i32 %21, %13
  store i32 %sub.i54, ptr %len.i, align 4
  %arrayidx22 = getelementptr i8, ptr %call9.i, i32 %13
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx22, align 1
  %call23 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.end21.err_crit_edge

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err:                                              ; preds = %if.end21.err_crit_edge, %if.end17.err_crit_edge, %if.end8.i.err_crit_edge, %if.end9.err_crit_edge, %if.end9.err_crit_edge71, %if.end4.err_crit_edge, %if.end.err_crit_edge
  %key.0 = phi ptr [ null, %if.end9.err_crit_edge ], [ %call9.i, %if.end21.err_crit_edge ], [ null, %if.end8.i.err_crit_edge ], [ null, %if.end4.err_crit_edge ], [ null, %if.end9.err_crit_edge71 ], [ null, %if.end.err_crit_edge ], [ %call9.i, %if.end17.err_crit_edge ]
  %rc.0 = phi i32 [ -22, %if.end9.err_crit_edge ], [ %call23, %if.end21.err_crit_edge ], [ -12, %if.end8.i.err_crit_edge ], [ -22, %if.end4.err_crit_edge ], [ -22, %if.end9.err_crit_edge71 ], [ -22, %if.end.err_crit_edge ], [ -22, %if.end17.err_crit_edge ]
  tail call void @kfree(ptr noundef %key.0) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @symtab_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cond_read_list(ptr noundef %p, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp ult i32 %1, 4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %3, align 1
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %1, -4
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %len.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 28) #11
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !45

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cond_list51 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 14
  %9 = ptrtoint ptr %cond_list51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cond_list51, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %10 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #15
  %cond_list = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 14
  %11 = ptrtoint ptr %cond_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %cond_list, align 4
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end5

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 13
  %nel = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nel, align 4
  %call6 = tail call i32 @avtab_alloc(ptr noundef %te_cond_avtab, i32 noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_crit_edge

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end9:                                          ; preds = %if.end5
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 15
  %14 = ptrtoint ptr %cond_list_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %6, ptr %cond_list_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload)
  %cmp69.not = icmp eq i32 %buf.sroa.0.0.copyload, 0
  br i1 %cmp69.not, label %if.end9.cleanup_crit_edge, label %for.body.lr.ph

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  %nprim.i.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 5, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %cond_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cond_list, align 4
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp.i.i = icmp ult i32 %18, 8
  br i1 %cmp.i.i, label %for.body.err_crit_edge, label %if.end.i35

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end.i35:                                       ; preds = %for.body
  %arrayidx11 = getelementptr %struct.cond_node, ptr %16, i32 %i.070
  %19 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fp, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %buf.sroa.0.0.copyload.i = load i32, ptr %20, align 1
  %buf.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %20, i32 4
  %22 = ptrtoint ptr %buf.sroa.7.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %buf.sroa.7.0.copyload.i = load i32, ptr %buf.sroa.7.0..sroa_idx.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 8
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = add i32 %18, -8
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i.i, ptr %len.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload.i) #11
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx11, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload.i) #11
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 8) #11
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !45

kcalloc.exit.thread.i:                            ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #13
  %expr79.i = getelementptr %struct.cond_node, ptr %16, i32 %i.070, i32 1
  %29 = ptrtoint ptr %expr79.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %expr79.i, align 4
  br label %err

if.end7.i.i.i:                                    ; preds = %if.end.i35
  %30 = extractvalue { i32, i1 } %27, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #15
  %expr.i = getelementptr %struct.cond_node, ptr %16, i32 %i.070, i32 1
  %31 = ptrtoint ptr %expr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i.i, ptr %expr.i, align 4
  %tobool5.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i.err_crit_edge, label %if.end7.i

if.end7.i.i.i.err_crit_edge:                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end7.i:                                        ; preds = %if.end7.i.i.i
  %len9.i = getelementptr %struct.cond_node, ptr %16, i32 %i.070, i32 1, i32 1
  %32 = ptrtoint ptr %len9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %len9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.7.0.copyload.i)
  %cmp104.not.i = icmp eq i32 %buf.sroa.7.0.copyload.i, 0
  br i1 %cmp104.not.i, label %if.end7.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end7.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %26, i32 1) #11
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i65.i
  %inc.i = add nuw i32 %i.0105.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0105.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %cmp.i59.i = icmp ult i32 %34, 8
  br i1 %cmp.i59.i, label %for.body.i.err_crit_edge, label %if.end18.i

for.body.i.err_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end18.i:                                       ; preds = %for.body.i
  %35 = ptrtoint ptr %expr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %expr.i, align 4
  %37 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fp, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %buf.sroa.0.0.copyload68.i = load i32, ptr %38, align 1
  %buf.sroa.7.0..sroa_idx69.i = getelementptr inbounds i8, ptr %38, i32 4
  %40 = ptrtoint ptr %buf.sroa.7.0..sroa_idx69.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %buf.sroa.7.0.copyload70.i = load i32, ptr %buf.sroa.7.0..sroa_idx69.i, align 1
  %add.ptr.i60.i = getelementptr i8, ptr %38, i32 8
  store ptr %add.ptr.i60.i, ptr %fp, align 4
  %sub.i61.i = add i32 %34, -8
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.i61.i, ptr %len.i, align 4
  %arrayidx13.i = getelementptr %struct.cond_expr_node, ptr %36, i32 %i.0105.i
  %42 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload68.i) #11
  %43 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx13.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload70.i) #11
  %bool.i = getelementptr %struct.cond_expr_node, ptr %36, i32 %i.0105.i, i32 1
  %45 = ptrtoint ptr %bool.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %bool.i, align 4
  %46 = add i32 %42, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %46)
  %47 = icmp ult i32 %46, -7
  br i1 %47, label %if.end18.i.cleanup.i_crit_edge, label %if.end.i65.i

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i65.i:                                     ; preds = %if.end18.i
  %48 = ptrtoint ptr %nprim.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nprim.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %49)
  %cmp3.i.i = icmp ugt i32 %44, %49
  br i1 %cmp3.i.i, label %if.end.i65.i.cleanup.i_crit_edge, label %for.cond.i

if.end.i65.i.cleanup.i_crit_edge:                 ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i65.i.cleanup.i_crit_edge, %if.end18.i.cleanup.i_crit_edge
  %.str.6.sink.i.i = phi ptr [ @.str.3, %if.end18.i.cleanup.i_crit_edge ], [ @.str.6, %if.end.i65.i.cleanup.i_crit_edge ]
  %call8.i.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6.sink.i.i) #14
  br label %err

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %true_list.i = getelementptr %struct.cond_node, ptr %16, i32 %i.070, i32 2
  %call25.i = tail call fastcc i32 @cond_read_av_list(ptr noundef %p, ptr noundef %fp, ptr noundef %true_list.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %cond_read_node.exit, label %for.end.i.err_crit_edge

for.end.i.err_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

cond_read_node.exit:                              ; preds = %for.end.i
  %false_list.i = getelementptr %struct.cond_node, ptr %16, i32 %i.070, i32 3
  %call30.i = tail call fastcc i32 @cond_read_av_list(ptr noundef %p, ptr noundef %fp, ptr noundef %false_list.i, ptr noundef %true_list.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool13.not = icmp eq i32 %call30.i, 0
  br i1 %tobool13.not, label %for.inc, label %cond_read_node.exit.err_crit_edge

cond_read_node.exit.err_crit_edge:                ; preds = %cond_read_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.inc:                                          ; preds = %cond_read_node.exit
  %inc = add nuw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err:                                              ; preds = %cond_read_node.exit.err_crit_edge, %for.end.i.err_crit_edge, %cleanup.i, %for.body.i.err_crit_edge, %if.end7.i.i.i.err_crit_edge, %kcalloc.exit.thread.i, %for.body.err_crit_edge, %if.end5.err_crit_edge
  %rc.0 = phi i32 [ %call6, %if.end5.err_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -22, %cleanup.i ], [ -22, %for.body.i.err_crit_edge ], [ -12, %if.end7.i.i.i.err_crit_edge ], [ %call25.i, %for.end.i.err_crit_edge ], [ -22, %for.body.err_crit_edge ], [ %call30.i, %cond_read_node.exit.err_crit_edge ]
  %cond_list_len.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 15
  %50 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cond_list_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp10.not.i = icmp eq i32 %51, 0
  br i1 %cmp10.not.i, label %err.cond_list_destroy.exit_crit_edge, label %err.for.body.i44_crit_edge

err.for.body.i44_crit_edge:                       ; preds = %err
  br label %for.body.i44

err.cond_list_destroy.exit_crit_edge:             ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_list_destroy.exit

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %err.for.body.i44_crit_edge
  %i.011.i = phi i32 [ %inc.i42, %for.body.i44.for.body.i44_crit_edge ], [ 0, %err.for.body.i44_crit_edge ]
  %52 = ptrtoint ptr %cond_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cond_list, align 4
  %expr.i.i = getelementptr %struct.cond_node, ptr %53, i32 %i.011.i, i32 1
  %54 = ptrtoint ptr %expr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %expr.i.i, align 4
  tail call void @kfree(ptr noundef %55) #11
  %true_list.i.i = getelementptr %struct.cond_node, ptr %53, i32 %i.011.i, i32 2
  %56 = ptrtoint ptr %true_list.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %true_list.i.i, align 4
  tail call void @kfree(ptr noundef %57) #11
  %false_list.i.i = getelementptr %struct.cond_node, ptr %53, i32 %i.011.i, i32 3
  %58 = ptrtoint ptr %false_list.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %false_list.i.i, align 4
  tail call void @kfree(ptr noundef %59) #11
  %inc.i42 = add nuw i32 %i.011.i, 1
  %60 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cond_list_len.i, align 4
  %cmp.i43 = icmp ult i32 %inc.i42, %61
  br i1 %cmp.i43, label %for.body.i44.for.body.i44_crit_edge, label %for.body.i44.cond_list_destroy.exit_crit_edge

for.body.i44.cond_list_destroy.exit_crit_edge:    ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_list_destroy.exit

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i44

cond_list_destroy.exit:                           ; preds = %for.body.i44.cond_list_destroy.exit_crit_edge, %err.cond_list_destroy.exit_crit_edge
  %62 = ptrtoint ptr %cond_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cond_list, align 4
  tail call void @kfree(ptr noundef %63) #11
  %64 = ptrtoint ptr %cond_list to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %cond_list, align 4
  %65 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %cond_list_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond_list_destroy.exit, %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %cond_list_destroy.exit ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avtab_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cond_write_bool(ptr nocapture noundef readonly %vkey, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %ptr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %call = tail call i32 @strlen(ptr noundef %vkey) #17
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datum, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %state = getelementptr inbounds %struct.cond_bool_datum, ptr %datum, i32 0, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = tail call i32 @llvm.bswap.i32(i32 %call)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %4, ptr %10, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 4
  %12 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %7, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 8
  %13 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %8, ptr %buf.sroa.7.0..sroa_idx, align 1
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 12
  store ptr %add.ptr.i, ptr %1, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %16, -12
  store i32 %sub.i, ptr %len2.i, align 4
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 %call
  store ptr %add.ptr.i22, ptr %1, align 4
  %19 = load i32, ptr %len2.i, align 4
  %sub.i24 = sub i32 %19, %call
  store i32 %sub.i24, ptr %len2.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cond_write_list(ptr noundef %p, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 15
  %0 = ptrtoint ptr %cond_list_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cond_list_len, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %2, ptr %4, align 1
  %6 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %7 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %8, -4
  store i32 %sub.i, ptr %len2.i, align 4
  %9 = ptrtoint ptr %cond_list_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cond_list_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp24.not = icmp eq i32 %10, 0
  br i1 %cmp24.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cond_list = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %cond_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond_list, align 4
  %arrayidx2 = getelementptr %struct.cond_node, ptr %12, i32 %i.025
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fp, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %15, ptr %17, align 1
  %19 = load ptr, ptr %fp, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %20 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len2.i, align 4
  %sub.i.i = add i32 %21, -4
  store i32 %sub.i.i, ptr %len2.i, align 4
  %expr.i = getelementptr %struct.cond_node, ptr %12, i32 %i.025, i32 1
  %len.i = getelementptr %struct.cond_node, ptr %12, i32 %i.025, i32 1, i32 1
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %add.ptr.i.i, align 1
  %26 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fp, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %27, i32 4
  store ptr %add.ptr.i54.i, ptr %fp, align 4
  %28 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len2.i, align 4
  %sub.i56.i = add i32 %29, -4
  store i32 %sub.i56.i, ptr %len2.i, align 4
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp81.not.i = icmp eq i32 %31, 0
  br i1 %cmp81.not.i, label %for.body.for.end.i_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.082.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %expr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %expr.i, align 4
  %arrayidx10.i = getelementptr %struct.cond_expr_node, ptr %33, i32 %i.082.i
  %34 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx10.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  %bool.i = getelementptr %struct.cond_expr_node, ptr %33, i32 %i.082.i, i32 1
  %37 = ptrtoint ptr %bool.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bool.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %40 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fp, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %36, ptr %41, align 1
  %buf.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %41, i32 4
  %43 = ptrtoint ptr %buf.sroa.9.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %39, ptr %buf.sroa.9.0..sroa_idx.i, align 1
  %44 = load ptr, ptr %fp, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %44, i32 8
  store ptr %add.ptr.i57.i, ptr %fp, align 4
  %45 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len2.i, align 4
  %sub.i59.i = add i32 %46, -8
  store i32 %sub.i59.i, ptr %len2.i, align 4
  %inc.i = add nuw i32 %i.082.i, 1
  %47 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %48
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %true_list.i = getelementptr %struct.cond_node, ptr %12, i32 %i.025, i32 2
  %len.i.i = getelementptr %struct.cond_node, ptr %12, i32 %i.025, i32 2, i32 1
  %49 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #11
  %52 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fp, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %51, ptr %53, align 1
  %55 = load ptr, ptr %fp, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 4
  store ptr %add.ptr.i.i.i, ptr %fp, align 4
  %56 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len2.i, align 4
  %sub.i.i.i = add i32 %57, -4
  store i32 %sub.i.i.i, ptr %len2.i, align 4
  %58 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp17.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp17.not.i.i, label %for.end.i.if.end24.i_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.if.end24.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %60 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %61
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end24.i_crit_edge

for.cond.i.i.if.end24.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %62 = ptrtoint ptr %true_list.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %true_list.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %63, i32 %i.018.i.i
  %64 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx2.i.i, align 4
  %call3.i.i = tail call i32 @avtab_write_item(ptr noundef %p, ptr noundef %65, ptr noundef %fp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %for.cond.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24.i:                                       ; preds = %for.cond.i.i.if.end24.i_crit_edge, %for.end.i.if.end24.i_crit_edge
  %false_list.i = getelementptr %struct.cond_node, ptr %12, i32 %i.025, i32 3
  %len.i60.i = getelementptr %struct.cond_node, ptr %12, i32 %i.025, i32 3, i32 1
  %66 = ptrtoint ptr %len.i60.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i60.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #11
  %69 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fp, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %68, ptr %70, align 1
  %72 = load ptr, ptr %fp, align 4
  %add.ptr.i.i61.i = getelementptr i8, ptr %72, i32 4
  store ptr %add.ptr.i.i61.i, ptr %fp, align 4
  %73 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len2.i, align 4
  %sub.i.i63.i = add i32 %74, -4
  store i32 %sub.i.i63.i, ptr %len2.i, align 4
  %75 = ptrtoint ptr %len.i60.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp17.not.i64.i = icmp eq i32 %76, 0
  br i1 %cmp17.not.i64.i, label %if.end24.i.for.inc_crit_edge, label %if.end24.i.for.body.i72.i_crit_edge

if.end24.i.for.body.i72.i_crit_edge:              ; preds = %if.end24.i
  br label %for.body.i72.i

if.end24.i.for.inc_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.cond.i67.i:                                   ; preds = %for.body.i72.i
  %inc.i65.i = add nuw i32 %i.018.i68.i, 1
  %77 = ptrtoint ptr %len.i60.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len.i60.i, align 4
  %cmp.i66.i = icmp ult i32 %inc.i65.i, %78
  br i1 %cmp.i66.i, label %for.cond.i67.i.for.body.i72.i_crit_edge, label %for.cond.i67.i.for.inc_crit_edge

for.cond.i67.i.for.inc_crit_edge:                 ; preds = %for.cond.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.cond.i67.i.for.body.i72.i_crit_edge:          ; preds = %for.cond.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i72.i

for.body.i72.i:                                   ; preds = %for.cond.i67.i.for.body.i72.i_crit_edge, %if.end24.i.for.body.i72.i_crit_edge
  %i.018.i68.i = phi i32 [ %inc.i65.i, %for.cond.i67.i.for.body.i72.i_crit_edge ], [ 0, %if.end24.i.for.body.i72.i_crit_edge ]
  %79 = ptrtoint ptr %false_list.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %false_list.i, align 4
  %arrayidx2.i69.i = getelementptr ptr, ptr %80, i32 %i.018.i68.i
  %81 = ptrtoint ptr %arrayidx2.i69.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx2.i69.i, align 4
  %call3.i70.i = tail call i32 @avtab_write_item(ptr noundef %p, ptr noundef %82, ptr noundef %fp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i70.i)
  %tobool4.not.i71.i = icmp eq i32 %call3.i70.i, 0
  br i1 %tobool4.not.i71.i, label %for.cond.i67.i, label %for.body.i72.i.cleanup_crit_edge

for.body.i72.i.cleanup_crit_edge:                 ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.cond.i67.i.for.inc_crit_edge, %if.end24.i.for.inc_crit_edge
  %inc = add nuw i32 %i.025, 1
  %83 = ptrtoint ptr %cond_list_len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cond_list_len, align 4
  %cmp = icmp ult i32 %inc, %84
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.i72.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3.i70.i, %for.body.i72.i.cleanup_crit_edge ], [ %call3.i.i, %for.body.i.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cond_compute_xperms(ptr noundef %ctab, ptr noundef %key, ptr noundef %xpermd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctab, null
  %tobool1.not = icmp eq ptr %key, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %xpermd, null
  %or.cond19 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond19, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @avtab_search_node(ptr noundef nonnull %ctab, ptr noundef nonnull %key) #11
  %tobool4.not20 = icmp eq ptr %call, null
  br i1 %tobool4.not20, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %specified9 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.021 = phi ptr [ %call, %for.body.lr.ph ], [ %call11, %for.inc.for.body_crit_edge ]
  %specified = getelementptr inbounds %struct.avtab_key, ptr %node.021, i32 0, i32 3
  %0 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %specified, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool6.not = icmp sgt i16 %1, -1
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @services_compute_xperms_decision(ptr noundef nonnull %xpermd, ptr noundef nonnull %node.021) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %specified9 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %specified9, align 2
  %conv10 = zext i16 %3 to i32
  %call11 = tail call ptr @avtab_search_node_next(ptr noundef nonnull %node.021, i32 noundef %conv10) #11
  %tobool4.not = icmp eq ptr %call11, null
  br i1 %tobool4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @avtab_search_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @services_compute_xperms_decision(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @avtab_search_node_next(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cond_compute_av(ptr noundef %ctab, ptr noundef %key, ptr noundef %avd, ptr noundef %xperms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctab, null
  %tobool1.not = icmp eq ptr %key, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %avd, null
  %or.cond65 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond65, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @avtab_search_node(ptr noundef nonnull %ctab, ptr noundef nonnull %key) #11
  %tobool4.not67 = icmp eq ptr %call, null
  br i1 %tobool4.not67, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %auditdeny = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 2
  %auditallow = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 1
  %tobool31.not = icmp eq ptr %xperms, null
  %specified45 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.068 = phi ptr [ %call, %for.body.lr.ph ], [ %call47, %for.inc.for.body_crit_edge ]
  %specified = getelementptr inbounds %struct.avtab_key, ptr %node.068, i32 0, i32 3
  %0 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %specified, align 2
  %2 = and i16 %1, -32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %2)
  %cmp = icmp eq i16 %2, -32767
  br i1 %cmp, label %if.then7, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %datum = getelementptr inbounds %struct.avtab_node, ptr %node.068, i32 0, i32 1
  %3 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %datum, align 4
  %5 = ptrtoint ptr %avd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %avd, align 4
  %or = or i32 %6, %4
  store i32 %or, ptr %avd, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body.if.end8_crit_edge
  %7 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %specified, align 2
  %9 = and i16 %8, -32764
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32764, i16 %9)
  %cmp13 = icmp eq i16 %9, -32764
  br i1 %cmp13, label %if.then15, label %if.end8.if.end19_crit_edge

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %datum16 = getelementptr inbounds %struct.avtab_node, ptr %node.068, i32 0, i32 1
  %10 = ptrtoint ptr %datum16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datum16, align 4
  %12 = ptrtoint ptr %auditdeny to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %auditdeny, align 4
  %and18 = and i32 %13, %11
  store i32 %and18, ptr %auditdeny, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end8.if.end19_crit_edge
  %14 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %specified, align 2
  %16 = and i16 %15, -32766
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32766, i16 %16)
  %cmp24 = icmp eq i16 %16, -32766
  br i1 %cmp24, label %if.then26, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %datum27 = getelementptr inbounds %struct.avtab_node, ptr %node.068, i32 0, i32 1
  %17 = ptrtoint ptr %datum27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datum27, align 4
  %19 = ptrtoint ptr %auditallow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %auditallow, align 4
  %or29 = or i32 %20, %18
  store i32 %or29, ptr %auditallow, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end19.if.end30_crit_edge
  br i1 %tobool31.not, label %if.end30.for.inc_crit_edge, label %land.lhs.true

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end30
  %21 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %specified, align 2
  %conv34 = zext i16 %22 to i32
  %and35 = and i32 %conv34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %and41 = and i32 %conv34, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond66 = or i1 %tobool36.not, %tobool42.not
  br i1 %or.cond66, label %land.lhs.true.for.inc_crit_edge, label %if.then43

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @services_compute_xperms_drivers(ptr noundef nonnull %xperms, ptr noundef nonnull %node.068) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %land.lhs.true.for.inc_crit_edge, %if.end30.for.inc_crit_edge
  %23 = ptrtoint ptr %specified45 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %specified45, align 2
  %conv46 = zext i16 %24 to i32
  %call47 = tail call ptr @avtab_search_node_next(ptr noundef nonnull %node.068, i32 noundef %conv46) #11
  %tobool4.not = icmp eq ptr %call47, null
  br i1 %tobool4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @services_compute_xperms_drivers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cond_policydb_destroy_dup(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 5
  %call = tail call i32 @hashtab_map(ptr noundef %arrayidx, ptr noundef nonnull @cond_bools_destroy, ptr noundef null) #11
  tail call void @hashtab_destroy(ptr noundef %arrayidx) #11
  tail call void @cond_policydb_destroy(ptr noundef %p)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hashtab_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cond_bools_destroy(ptr nocapture noundef readnone %key, ptr noundef %datum, ptr nocapture noundef readnone %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %datum) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hashtab_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cond_policydb_dup(ptr noundef %new, ptr noundef %orig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bool_val_to_struct.i = getelementptr inbounds %struct.policydb, ptr %new, i32 0, i32 12
  %0 = ptrtoint ptr %bool_val_to_struct.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bool_val_to_struct.i, align 4
  %cond_list.i = getelementptr inbounds %struct.policydb, ptr %new, i32 0, i32 14
  %1 = ptrtoint ptr %cond_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cond_list.i, align 4
  %cond_list_len.i = getelementptr inbounds %struct.policydb, ptr %new, i32 0, i32 15
  %2 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cond_list_len.i, align 4
  %te_cond_avtab.i = getelementptr inbounds %struct.policydb, ptr %new, i32 0, i32 13
  tail call void @avtab_init(ptr noundef %te_cond_avtab.i) #11
  %nprim.i = getelementptr %struct.policydb, ptr %orig, i32 0, i32 1, i32 5, i32 1
  %3 = ptrtoint ptr %nprim.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nprim.i, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #11
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %entry.return_crit_edge, label %if.end7.i.i, !prof !45

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.return_crit_edge, label %if.end.i

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %if.end7.i.i
  %arrayidx.i = getelementptr %struct.policydb, ptr %orig, i32 0, i32 1, i32 5
  %arrayidx2.i = getelementptr %struct.policydb, ptr %new, i32 0, i32 1, i32 5
  %call6.i = tail call i32 @hashtab_duplicate(ptr noundef %arrayidx2.i, ptr noundef %arrayidx.i, ptr noundef nonnull @cond_bools_copy, ptr noundef nonnull @cond_bools_destroy, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %return

if.end:                                           ; preds = %if.end.i
  %call13.i = tail call i32 @hashtab_map(ptr noundef %arrayidx2.i, ptr noundef nonnull @cond_bools_index, ptr noundef nonnull %call8.i.i) #11
  %8 = ptrtoint ptr %bool_val_to_struct.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %bool_val_to_struct.i, align 4
  %9 = ptrtoint ptr %nprim.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nprim.i, align 4
  %nprim19.i = getelementptr %struct.policydb, ptr %new, i32 0, i32 1, i32 5, i32 1
  %11 = ptrtoint ptr %nprim19.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nprim19.i, align 4
  %te_cond_avtab1.i = getelementptr inbounds %struct.policydb, ptr %orig, i32 0, i32 13
  %call.i = tail call i32 @avtab_alloc_dup(ptr noundef %te_cond_avtab.i, ptr noundef %te_cond_avtab1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i11 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i11, label %if.end.i13, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.i13:                                       ; preds = %if.end
  %12 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cond_list_len.i, align 4
  %cond_list_len2.i = getelementptr inbounds %struct.policydb, ptr %orig, i32 0, i32 15
  %13 = ptrtoint ptr %cond_list_len2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cond_list_len2.i, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 28) #11
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end.i13.error.sink.split.i_crit_edge, label %if.end7.i.i.i, !prof !45

if.end.i13.error.sink.split.i_crit_edge:          ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.sink.split.i

if.end7.i.i.i:                                    ; preds = %if.end.i13
  %17 = extractvalue { i32, i1 } %15, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #15
  %18 = ptrtoint ptr %cond_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i.i, ptr %cond_list.i, align 4
  %tobool5.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i.error.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.error.i_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %19 = ptrtoint ptr %cond_list_len2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cond_list_len2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp152.not.i = icmp eq i32 %20, 0
  br i1 %cmp152.not.i, label %for.cond.preheader.i.return_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.return_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cond_list10.i = getelementptr inbounds %struct.policydb, ptr %orig, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0153.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc40.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %cond_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cond_list.i, align 4
  %arrayidx.i19 = getelementptr %struct.cond_node, ptr %22, i32 %i.0153.i
  %23 = ptrtoint ptr %cond_list10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond_list10.i, align 4
  %arrayidx11.i = getelementptr %struct.cond_node, ptr %24, i32 %i.0153.i
  %25 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cond_list_len.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %cond_list_len.i, align 4
  %27 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx11.i, align 4
  %29 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i19, align 4
  %expr.i = getelementptr %struct.cond_node, ptr %24, i32 %i.0153.i, i32 1
  %30 = ptrtoint ptr %expr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %expr.i, align 4
  %len.i = getelementptr %struct.cond_node, ptr %24, i32 %i.0153.i, i32 1, i32 1
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %mul.i = shl i32 %33, 3
  %call15.i = tail call ptr @kmemdup(ptr noundef %31, i32 noundef %mul.i, i32 noundef 3264) #11
  %expr16.i = getelementptr %struct.cond_node, ptr %22, i32 %i.0153.i, i32 1
  %34 = ptrtoint ptr %expr16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call15.i, ptr %expr16.i, align 4
  %tobool20.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool20.not.i, label %for.body.i.error.i_crit_edge, label %if.end22.i

for.body.i.error.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end22.i:                                       ; preds = %for.body.i
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %len26.i = getelementptr %struct.cond_node, ptr %22, i32 %i.0153.i, i32 1, i32 1
  %37 = ptrtoint ptr %len26.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %len26.i, align 4
  %true_list.i = getelementptr %struct.cond_node, ptr %22, i32 %i.0153.i, i32 2
  %true_list27.i = getelementptr %struct.cond_node, ptr %24, i32 %i.0153.i, i32 2
  %38 = ptrtoint ptr %true_list.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %true_list.i, align 4
  %len.i.i = getelementptr %struct.cond_node, ptr %24, i32 %i.0153.i, i32 2, i32 1
  %39 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i.i, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 4) #11
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %if.end22.i.error.sink.split.i_crit_edge, label %if.end7.i.i.i.i, !prof !45

if.end22.i.error.sink.split.i_crit_edge:          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.sink.split.i

if.end7.i.i.i.i:                                  ; preds = %if.end22.i
  %43 = extractvalue { i32, i1 } %41, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #15
  %44 = ptrtoint ptr %true_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.i.i.i, ptr %true_list.i, align 4
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.error.i_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i.error.i_crit_edge:                ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp31.not.i.i = icmp eq i32 %46, 0
  br i1 %cmp31.not.i.i, label %for.cond.preheader.i.i.if.end32.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end32.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %len14.i.i = getelementptr %struct.cond_node, ptr %22, i32 %i.0153.i, i32 2, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end13.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.032.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc15.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %47 = ptrtoint ptr %true_list27.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %true_list27.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %48, i32 %i.032.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %datum.i.i = getelementptr inbounds %struct.avtab_node, ptr %50, i32 0, i32 1
  %call6.i.i = tail call ptr @avtab_insert_nonunique(ptr noundef %te_cond_avtab.i, ptr noundef %50, ptr noundef %datum.i.i) #11
  %51 = ptrtoint ptr %true_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %true_list.i, align 4
  %arrayidx8.i.i = getelementptr ptr, ptr %52, i32 %i.032.i.i
  %53 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call6.i.i, ptr %arrayidx8.i.i, align 4
  %54 = load ptr, ptr %true_list.i, align 4
  %arrayidx10.i.i = getelementptr ptr, ptr %54, i32 %i.032.i.i
  %55 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %56, null
  br i1 %tobool11.not.i.i, label %for.body.i.i.error.i_crit_edge, label %if.end13.i.i

for.body.i.i.error.i_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end13.i.i:                                     ; preds = %for.body.i.i
  %57 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len14.i.i, align 4
  %inc.i.i = add i32 %58, 1
  store i32 %inc.i.i, ptr %len14.i.i, align 4
  %inc15.i.i = add nuw i32 %i.032.i.i, 1
  %59 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc15.i.i, %60
  br i1 %cmp.i.i, label %if.end13.i.i.for.body.i.i_crit_edge, label %if.end13.i.i.if.end32.i_crit_edge

if.end13.i.i.if.end32.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.end13.i.i.for.body.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end32.i:                                       ; preds = %if.end13.i.i.if.end32.i_crit_edge, %for.cond.preheader.i.i.if.end32.i_crit_edge
  %false_list.i = getelementptr %struct.cond_node, ptr %22, i32 %i.0153.i, i32 3
  %false_list33.i = getelementptr %struct.cond_node, ptr %24, i32 %i.0153.i, i32 3
  %61 = ptrtoint ptr %false_list.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 0, ptr %false_list.i, align 4
  %len.i77.i = getelementptr %struct.cond_node, ptr %24, i32 %i.0153.i, i32 3, i32 1
  %62 = ptrtoint ptr %len.i77.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i77.i, align 4
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 4) #11
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %if.end32.i.error.sink.split.i_crit_edge, label %if.end7.i.i.i110.i, !prof !45

if.end32.i.error.sink.split.i_crit_edge:          ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.sink.split.i

if.end7.i.i.i110.i:                               ; preds = %if.end32.i
  %66 = extractvalue { i32, i1 } %64, 0
  %call8.i.i.i109.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %66, i32 noundef 3520) #15
  %67 = ptrtoint ptr %false_list.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call8.i.i.i109.i, ptr %false_list.i, align 4
  %tobool.not.i112.i = icmp eq ptr %call8.i.i.i109.i, null
  br i1 %tobool.not.i112.i, label %if.end7.i.i.i110.i.error.i_crit_edge, label %for.cond.preheader.i115.i

if.end7.i.i.i110.i.error.i_crit_edge:             ; preds = %if.end7.i.i.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

for.cond.preheader.i115.i:                        ; preds = %if.end7.i.i.i110.i
  %68 = ptrtoint ptr %len.i77.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp31.not.i114.i = icmp eq i32 %69, 0
  br i1 %cmp31.not.i114.i, label %for.cond.preheader.i115.i.for.inc.i_crit_edge, label %for.body.lr.ph.i117.i

for.cond.preheader.i115.i.for.inc.i_crit_edge:    ; preds = %for.cond.preheader.i115.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.lr.ph.i117.i:                            ; preds = %for.cond.preheader.i115.i
  %len14.i116.i = getelementptr %struct.cond_node, ptr %22, i32 %i.0153.i, i32 3, i32 1
  br label %for.body.i125.i

for.body.i125.i:                                  ; preds = %if.end13.i129.i.for.body.i125.i_crit_edge, %for.body.lr.ph.i117.i
  %i.032.i118.i = phi i32 [ 0, %for.body.lr.ph.i117.i ], [ %inc15.i127.i, %if.end13.i129.i.for.body.i125.i_crit_edge ]
  %70 = ptrtoint ptr %false_list33.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %false_list33.i, align 4
  %arrayidx.i119.i = getelementptr ptr, ptr %71, i32 %i.032.i118.i
  %72 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i119.i, align 4
  %datum.i120.i = getelementptr inbounds %struct.avtab_node, ptr %73, i32 0, i32 1
  %call6.i121.i = tail call ptr @avtab_insert_nonunique(ptr noundef %te_cond_avtab.i, ptr noundef %73, ptr noundef %datum.i120.i) #11
  %74 = ptrtoint ptr %false_list.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %false_list.i, align 4
  %arrayidx8.i122.i = getelementptr ptr, ptr %75, i32 %i.032.i118.i
  %76 = ptrtoint ptr %arrayidx8.i122.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call6.i121.i, ptr %arrayidx8.i122.i, align 4
  %77 = load ptr, ptr %false_list.i, align 4
  %arrayidx10.i123.i = getelementptr ptr, ptr %77, i32 %i.032.i118.i
  %78 = ptrtoint ptr %arrayidx10.i123.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx10.i123.i, align 4
  %tobool11.not.i124.i = icmp eq ptr %79, null
  br i1 %tobool11.not.i124.i, label %for.body.i125.i.error.i_crit_edge, label %if.end13.i129.i

for.body.i125.i.error.i_crit_edge:                ; preds = %for.body.i125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end13.i129.i:                                  ; preds = %for.body.i125.i
  %80 = ptrtoint ptr %len14.i116.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len14.i116.i, align 4
  %inc.i126.i = add i32 %81, 1
  store i32 %inc.i126.i, ptr %len14.i116.i, align 4
  %inc15.i127.i = add nuw i32 %i.032.i118.i, 1
  %82 = ptrtoint ptr %len.i77.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i77.i, align 4
  %cmp.i128.i = icmp ult i32 %inc15.i127.i, %83
  br i1 %cmp.i128.i, label %if.end13.i129.i.for.body.i125.i_crit_edge, label %if.end13.i129.i.for.inc.i_crit_edge

if.end13.i129.i.for.inc.i_crit_edge:              ; preds = %if.end13.i129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end13.i129.i.for.body.i125.i_crit_edge:        ; preds = %if.end13.i129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i125.i

for.inc.i:                                        ; preds = %if.end13.i129.i.for.inc.i_crit_edge, %for.cond.preheader.i115.i.for.inc.i_crit_edge
  %inc40.i = add nuw i32 %i.0153.i, 1
  %84 = ptrtoint ptr %cond_list_len2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cond_list_len2.i, align 4
  %cmp.i = icmp ult i32 %inc40.i, %85
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.return_crit_edge

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

error.sink.split.i:                               ; preds = %if.end32.i.error.sink.split.i_crit_edge, %if.end22.i.error.sink.split.i_crit_edge, %if.end.i13.error.sink.split.i_crit_edge
  %false_list.lcssa.sink.i = phi ptr [ %cond_list.i, %if.end.i13.error.sink.split.i_crit_edge ], [ %false_list.i, %if.end32.i.error.sink.split.i_crit_edge ], [ %true_list.i, %if.end22.i.error.sink.split.i_crit_edge ]
  %86 = ptrtoint ptr %false_list.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %false_list.lcssa.sink.i, align 4
  br label %error.i

error.i:                                          ; preds = %error.sink.split.i, %for.body.i125.i.error.i_crit_edge, %if.end7.i.i.i110.i.error.i_crit_edge, %for.body.i.i.error.i_crit_edge, %if.end7.i.i.i.i.error.i_crit_edge, %for.body.i.error.i_crit_edge, %if.end7.i.i.i.error.i_crit_edge
  tail call void @avtab_destroy(ptr noundef %te_cond_avtab.i) #11
  %87 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cond_list_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp10.not.i.i = icmp eq i32 %88, 0
  br i1 %cmp10.not.i.i, label %error.i.cond_list_destroy.exit.i_crit_edge, label %error.i.for.body.i135.i_crit_edge

error.i.for.body.i135.i_crit_edge:                ; preds = %error.i
  br label %for.body.i135.i

error.i.cond_list_destroy.exit.i_crit_edge:       ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_list_destroy.exit.i

for.body.i135.i:                                  ; preds = %for.body.i135.i.for.body.i135.i_crit_edge, %error.i.for.body.i135.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i133.i, %for.body.i135.i.for.body.i135.i_crit_edge ], [ 0, %error.i.for.body.i135.i_crit_edge ]
  %89 = ptrtoint ptr %cond_list.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cond_list.i, align 4
  %expr.i.i.i = getelementptr %struct.cond_node, ptr %90, i32 %i.011.i.i, i32 1
  %91 = ptrtoint ptr %expr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %expr.i.i.i, align 4
  tail call void @kfree(ptr noundef %92) #11
  %true_list.i.i.i = getelementptr %struct.cond_node, ptr %90, i32 %i.011.i.i, i32 2
  %93 = ptrtoint ptr %true_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %true_list.i.i.i, align 4
  tail call void @kfree(ptr noundef %94) #11
  %false_list.i.i.i = getelementptr %struct.cond_node, ptr %90, i32 %i.011.i.i, i32 3
  %95 = ptrtoint ptr %false_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %false_list.i.i.i, align 4
  tail call void @kfree(ptr noundef %96) #11
  %inc.i133.i = add nuw i32 %i.011.i.i, 1
  %97 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cond_list_len.i, align 4
  %cmp.i134.i = icmp ult i32 %inc.i133.i, %98
  br i1 %cmp.i134.i, label %for.body.i135.i.for.body.i135.i_crit_edge, label %for.body.i135.i.cond_list_destroy.exit.i_crit_edge

for.body.i135.i.cond_list_destroy.exit.i_crit_edge: ; preds = %for.body.i135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond_list_destroy.exit.i

for.body.i135.i.for.body.i135.i_crit_edge:        ; preds = %for.body.i135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i135.i

cond_list_destroy.exit.i:                         ; preds = %for.body.i135.i.cond_list_destroy.exit.i_crit_edge, %error.i.cond_list_destroy.exit.i_crit_edge
  %99 = ptrtoint ptr %cond_list.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cond_list.i, align 4
  tail call void @kfree(ptr noundef %100) #11
  %101 = ptrtoint ptr %cond_list.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %cond_list.i, align 4
  %102 = ptrtoint ptr %cond_list_len.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %cond_list_len.i, align 4
  br label %if.then3

if.then3:                                         ; preds = %cond_list_destroy.exit.i, %if.end.if.then3_crit_edge
  %call.i22 = tail call i32 @hashtab_map(ptr noundef %arrayidx2.i, ptr noundef nonnull @cond_bools_destroy, ptr noundef null) #11
  tail call void @hashtab_destroy(ptr noundef %arrayidx2.i) #11
  tail call void @cond_policydb_destroy(ptr noundef %new) #11
  br label %return

return:                                           ; preds = %if.then3, %for.inc.i.return_crit_edge, %for.cond.preheader.i.return_crit_edge, %if.then8.i, %if.end7.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %if.then8.i ], [ -12, %if.end7.i.i.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ 0, %for.cond.preheader.i.return_crit_edge ], [ 0, %for.inc.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cond_read_av_list(ptr noundef %p, ptr noundef %fp, ptr nocapture noundef %list, ptr noundef %other) unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.cond_insertf_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #11
  %0 = getelementptr inbounds %struct.cond_insertf_data, ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cond_insertf_data, ptr %data, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ult i32 %3, 4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %5, align 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %3, -4
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %len.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload)
  %cmp = icmp eq i32 %buf.sroa.0.0.copyload, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #11
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !45

kcalloc.exit.thread:                              ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %list, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end2
  %12 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #15
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %list, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup_crit_edge, label %for.body.lr.ph

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7.i.i
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %p, ptr %data, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %other, ptr %1, align 4
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 13
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list, align 4
  %arrayidx12 = getelementptr ptr, ptr %17, i32 %i.050
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx12, ptr %0, align 4
  %call13 = call i32 @avtab_read_item(ptr noundef %te_cond_avtab, ptr noundef %fp, ptr noundef %p, ptr noundef nonnull @cond_insertf, ptr noundef nonnull %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond, label %if.then15

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  call void @kfree(ptr noundef %20) #11
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %list, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %len19 = getelementptr inbounds %struct.cond_av_list, ptr %list, i32 0, i32 1
  %22 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %8, ptr %len19, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then15, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then15 ], [ 0, %for.end ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avtab_read_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cond_insertf(ptr nocapture noundef readnone %a, ptr noundef %k, ptr noundef %d, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %other2 = getelementptr inbounds %struct.cond_insertf_data, ptr %ptr, i32 0, i32 2
  %2 = ptrtoint ptr %other2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %other2, align 4
  %specified = getelementptr inbounds %struct.avtab_key, ptr %k, i32 0, i32 3
  %4 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %specified, align 2
  %6 = and i16 %5, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.if.end47_crit_edge, label %if.then

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then:                                          ; preds = %entry
  %te_avtab = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 7
  %call = tail call ptr @avtab_search(ptr noundef %te_avtab, ptr noundef %k) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %tobool6.not = icmp eq ptr %3, null
  %te_cond_avtab36 = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 13
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @avtab_search_node(ptr noundef %te_cond_avtab36, ptr noundef %k) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.if.end47_crit_edge, label %if.then10

if.then7.if.end47_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then10:                                        ; preds = %if.then7
  %7 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %specified, align 2
  %conv12 = zext i16 %8 to i32
  %call13 = tail call ptr @avtab_search_node_next(ptr noundef nonnull %call8, i32 noundef %conv12) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.cond.preheader, label %do.end18

for.cond.preheader:                               ; preds = %if.then10
  %len = getelementptr inbounds %struct.cond_av_list, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp81.not = icmp eq i32 %10, 0
  br i1 %cmp81.not, label %for.cond.preheader.do.end31.critedge_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end31.critedge_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.critedge

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  br label %for.body

do.end18:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.cond.do.end31.critedge_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.do.end31.critedge_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.critedge

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.082
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp23 = icmp eq ptr %14, %call8
  br i1 %cmp23, label %for.body.if.end47_crit_edge, label %for.cond

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.end31.critedge:                                ; preds = %for.cond.do.end31.critedge_crit_edge, %for.cond.preheader.do.end31.critedge_crit_edge
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call37 = tail call ptr @avtab_search(ptr noundef %te_cond_avtab36, ptr noundef %k) #11
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.else.if.end47_crit_edge, label %do.end42

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %cleanup

if.end47:                                         ; preds = %if.else.if.end47_crit_edge, %for.body.if.end47_crit_edge, %if.then7.if.end47_crit_edge, %entry.if.end47_crit_edge
  %te_cond_avtab48 = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 13
  %call49 = tail call ptr @avtab_insert_nonunique(ptr noundef %te_cond_avtab48, ptr noundef %k, ptr noundef %d) #11
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %dst = getelementptr inbounds %struct.cond_insertf_data, ptr %ptr, i32 0, i32 1
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call49, ptr %16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end54, %do.end42, %do.end31.critedge, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ 0, %if.end57 ], [ -12, %do.end54 ], [ -22, %do.end31.critedge ], [ -22, %do.end42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @avtab_search(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @avtab_insert_nonunique(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avtab_write_item(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hashtab_duplicate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cond_bools_copy(ptr nocapture noundef writeonly %new, ptr nocapture noundef readonly %orig, ptr nocapture noundef readnone %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %datum1 = getelementptr inbounds %struct.hashtab_node, ptr %orig, i32 0, i32 1
  %0 = ptrtoint ptr %datum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %datum1, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 8, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig, align 4
  %4 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %new, align 4
  %datum3 = getelementptr inbounds %struct.hashtab_node, ptr %new, i32 0, i32 1
  %5 = ptrtoint ptr %datum3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %datum3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cond_bools_index(ptr nocapture noundef readnone %key, ptr noundef %datum, ptr nocapture noundef writeonly %args) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datum, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr ptr, ptr %args, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %datum, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avtab_alloc_dup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/selinux/ss/conditional.c", i32 102, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @evaluate_cond_node._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @evaluate_cond_node._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/selinux/ss/conditional.c", i32 365, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @expr_node_isvalid._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @expr_node_isvalid._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../security/selinux/ss/conditional.c", i32 370, i32 3}
!13 = !{ptr @expr_node_isvalid._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @expr_node_isvalid._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/selinux/ss/conditional.c", i32 276, i32 4}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cond_insertf._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @cond_insertf._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/selinux/ss/conditional.c", i32 291, i32 6}
!22 = !{ptr @cond_insertf._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cond_insertf._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/selinux/ss/conditional.c", i32 302, i32 6}
!26 = !{ptr @cond_insertf._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cond_insertf._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/selinux/ss/conditional.c", i32 308, i32 5}
!30 = !{ptr @cond_insertf._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cond_insertf._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/selinux/ss/conditional.c", i32 316, i32 3}
!34 = !{ptr @cond_insertf._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cond_insertf._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
