; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/firewall.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/firewall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_drm_firewall = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.tegra_drm_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm_submit_data = type { ptr, i32 }
%struct.tegra_drm_used_mapping = type { ptr, i32 }
%struct.tegra_drm_mapping = type { %struct.kref, ptr, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@tegra_drm_fw_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"illegal SETCLASS(offset=0x%x, mask=0x%x, class=0x%x) at word %u\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_drm_fw_validate\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/tegra/firewall.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_drm_fw_validate._entry_ptr = internal global ptr @tegra_drm_fw_validate._entry, section ".printk_index", align 4
@tegra_drm_fw_validate._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"illegal INCR(offset=0x%x, count=%u) in class 0x%x at word %u\00", [35 x i8] zeroinitializer }, align 32
@tegra_drm_fw_validate._entry_ptr.7 = internal global ptr @tegra_drm_fw_validate._entry.5, section ".printk_index", align 4
@tegra_drm_fw_validate._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"illegal NONINCR(offset=0x%x, count=%u) in class 0x%x at word %u\00", [32 x i8] zeroinitializer }, align 32
@tegra_drm_fw_validate._entry_ptr.10 = internal global ptr @tegra_drm_fw_validate._entry.8, section ".printk_index", align 4
@tegra_drm_fw_validate._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"illegal MASK(offset=0x%x, mask=0x%x) in class 0x%x at word %u\00", [34 x i8] zeroinitializer }, align 32
@tegra_drm_fw_validate._entry_ptr.13 = internal global ptr @tegra_drm_fw_validate._entry.11, section ".printk_index", align 4
@tegra_drm_fw_validate._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"illegal IMM(offset=0x%x) in class 0x%x at word %u\00", [46 x i8] zeroinitializer }, align 32
@tegra_drm_fw_validate._entry_ptr.16 = internal global ptr @tegra_drm_fw_validate._entry.14, section ".printk_index", align 4
@tegra_drm_fw_validate._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"illegal INCR_W(offset=0x%x) in class 0x%x at word %u\00", [43 x i8] zeroinitializer }, align 32
@tegra_drm_fw_validate._entry_ptr.19 = internal global ptr @tegra_drm_fw_validate._entry.17, section ".printk_index", align 4
@tegra_drm_fw_validate._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"illegal NONINCR(offset=0x%x) in class 0x%x at word %u\00", [42 x i8] zeroinitializer }, align 32
@tegra_drm_fw_validate._entry_ptr.22 = internal global ptr @tegra_drm_fw_validate._entry.20, section ".printk_index", align 4
@tegra_drm_fw_validate._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"illegal opcode at word %u\00", [38 x i8] zeroinitializer }, align 32
@tegra_drm_fw_validate._entry_ptr.25 = internal global ptr @tegra_drm_fw_validate._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 9, i64 10, i64 11]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 177, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 186, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 195, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 204, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 213, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 228, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 239, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [36 x i8] c"../drivers/gpu/drm/tegra/firewall.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 244, i32 4 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @tegra_drm_fw_validate._entry, ptr @tegra_drm_fw_validate._entry.11, ptr @tegra_drm_fw_validate._entry.14, ptr @tegra_drm_fw_validate._entry.17, ptr @tegra_drm_fw_validate._entry.20, ptr @tegra_drm_fw_validate._entry.23, ptr @tegra_drm_fw_validate._entry.5, ptr @tegra_drm_fw_validate._entry.8, ptr @tegra_drm_fw_validate._entry_ptr, ptr @tegra_drm_fw_validate._entry_ptr.10, ptr @tegra_drm_fw_validate._entry_ptr.13, ptr @tegra_drm_fw_validate._entry_ptr.16, ptr @tegra_drm_fw_validate._entry_ptr.19, ptr @tegra_drm_fw_validate._entry_ptr.22, ptr @tegra_drm_fw_validate._entry_ptr.25, ptr @tegra_drm_fw_validate._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fw_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fw_validate._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fw_validate._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fw_validate._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fw_validate._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fw_validate._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fw_validate._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fw_validate._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_fw_validate(ptr noundef %client, ptr noundef %data, i32 noundef %start, i32 noundef %words, ptr noundef %submit, ptr nocapture noundef %job_class) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca %struct.tegra_drm_firewall, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fw) #4
  %0 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 5
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %submit, ptr %fw, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %start, ptr %2, align 4
  %add = add i32 %words, %start
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %3, align 4
  %10 = ptrtoint ptr %job_class to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %job_class, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %4, align 4
  %dev81 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp.not448 = icmp eq i32 %words, 0
  br i1 %cmp.not448, label %entry.cleanup137_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup137

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = phi i32 [ %214, %cleanup.if.end_crit_edge ], [ %add, %entry.if.end_crit_edge ]
  %14 = phi i32 [ %212, %cleanup.if.end_crit_edge ], [ %start, %entry.if.end_crit_edge ]
  %payload.0450 = phi i32 [ %payload.1, %cleanup.if.end_crit_edge ], [ -1, %entry.if.end_crit_edge ]
  %payload_valid.0.off0449 = phi i1 [ %payload_valid.1.off0, %cleanup.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %inc.i = add i32 %14, 1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.i, ptr %2, align 4
  %arrayidx.i = getelementptr i32, ptr %16, i32 %14
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %shr = lshr i32 %19, 28
  %20 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %do.end124 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb38
    i32 3, label %sw.bb54
    i32 4, label %sw.bb71
    i32 9, label %sw.bb86
    i32 10, label %sw.bb88
    i32 11, label %sw.bb105
  ]

sw.bb:                                            ; preds = %if.end
  %shr7 = lshr i32 %19, 16
  %and8 = and i32 %shr7, 4095
  %and9 = and i32 %19, 63
  %shr10 = lshr i32 %19, 6
  %and11 = and i32 %shr10, 1023
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  %ops.i = getelementptr inbounds %struct.tegra_drm_client, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %is_valid_class.i = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %is_valid_class.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %is_valid_class.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i207

if.then.i:                                        ; preds = %sw.bb
  %class2.i = getelementptr inbounds %struct.host1x_client, ptr %22, i32 0, i32 5
  %27 = ptrtoint ptr %class2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %class2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and11)
  %cmp.i206 = icmp eq i32 %28, %and11
  br i1 %cmp.i206, label %if.then.i.if.end17_crit_edge, label %if.then.i.if.end17.thread_crit_edge

if.then.i.if.end17.thread_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.thread

if.then.i.if.end17_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end.i207:                                      ; preds = %sw.bb
  %call.i = tail call i32 %26(i32 noundef %and11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i207.if.end17.thread_crit_edge, label %if.end.i207.if.end17_crit_edge

if.end.i207.if.end17_crit_edge:                   ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end.i207.if.end17.thread_crit_edge:            ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %if.end.i207.if.end17.thread_crit_edge, %if.then.i.if.end17.thread_crit_edge
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and11, ptr %4, align 4
  %30 = ptrtoint ptr %job_class to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and11, ptr %job_class, align 4
  br label %do.end

if.end17:                                         ; preds = %if.end.i207.if.end17_crit_edge, %if.then.i.if.end17_crit_edge
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and11, ptr %4, align 4
  %32 = ptrtoint ptr %job_class to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and11, ptr %job_class, align 4
  %conv = trunc i32 %and9 to i16
  %call16 = call fastcc i32 @fw_check_regs_mask(ptr noundef nonnull %fw, i32 noundef %and8, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end17.do.end_crit_edge

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %if.end17.thread
  %err.0357 = phi i32 [ -22, %if.end17.thread ], [ %call16, %if.end17.do.end_crit_edge ]
  %33 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev81, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %sub = add i32 %36, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef %and8, i32 noundef %and9, i32 noundef %and11, i32 noundef %sub) #7
  br label %cleanup137

sw.bb22:                                          ; preds = %if.end
  %shr23 = lshr i32 %19, 16
  %and24 = and i32 %shr23, 4095
  %and25 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp9.not.i = icmp eq i32 %and25, 0
  br i1 %cmp9.not.i, label %sw.bb22.cleanup_crit_edge, label %for.body.i.preheader

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i.preheader:                             ; preds = %sw.bb22
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %3, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.promoted483 = load i32, ptr %2, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i209.for.body.i_crit_edge, %for.body.i.preheader
  %40 = phi i32 [ %inc.i.i.i, %if.end.i209.for.body.i_crit_edge ], [ %.promoted483, %for.body.i.preheader ]
  %i.011.i = phi i32 [ %inc4.i, %if.end.i209.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %offset.addr.010.i = phi i32 [ %spec.select.i, %if.end.i209.for.body.i_crit_edge ], [ %and24, %for.body.i.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp.i.i.i = icmp eq i32 %40, %38
  br i1 %cmp.i.i.i, label %for.body.i.do.end31_crit_edge, label %if.end.i.i

for.body.i.do.end31_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

if.end.i.i:                                       ; preds = %for.body.i
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %inc.i.i.i = add i32 %40, 1
  %arrayidx.i.i.i = getelementptr i32, ptr %42, i32 %40
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i, align 4
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %ops.i.i = getelementptr inbounds %struct.tegra_drm_client, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %is_addr_reg.i.i = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %is_addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %is_addr_reg.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end.i209_crit_edge, label %if.end3.i.i

if.end.i.i.if.end.i209_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i209

if.end3.i.i:                                      ; preds = %if.end.i.i
  %dev.i.i = getelementptr inbounds %struct.host1x_client, ptr %46, i32 0, i32 2
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 4
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %4, align 4
  %call8.i.i = tail call i32 %50(ptr noundef %52, i32 noundef %54, i32 noundef %offset.addr.010.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end3.i.i.if.end.i209_crit_edge, label %if.end12.i.i

if.end3.i.i.if.end.i209_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i209

if.end12.i.i:                                     ; preds = %if.end3.i.i
  %55 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw, align 4
  %num_used_mappings.i.i.i = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %num_used_mappings.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_used_mappings.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp10.not.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp10.not.i.i.i, label %if.end12.i.i.do.end31_crit_edge, label %for.body.lr.ph.i.i.i

if.end12.i.i.do.end31_crit_edge:                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

for.body.lr.ph.i.i.i:                             ; preds = %if.end12.i.i
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.critedge.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %cmp12.i.i.i = phi i1 [ true, %for.body.lr.ph.i.i.i ], [ %cmp.i26.i.i, %for.inc.critedge.i.i.i.for.body.i.i.i_crit_edge ]
  %i.011.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i25.i.i, %for.inc.critedge.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i24.i.i = getelementptr %struct.tegra_drm_used_mapping, ptr %60, i32 %i.011.i.i.i
  %61 = ptrtoint ptr %arrayidx.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i24.i.i, align 4
  %iova.i.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %iova.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iova.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %44)
  %cmp2.not.i.i.i = icmp ugt i32 %64, %44
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.critedge.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.critedge.i.i.i_crit_edge:  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %iova_end.i.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %62, i32 0, i32 4
  %65 = ptrtoint ptr %iova_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iova_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %44)
  %cmp3.not.i.i.i = icmp ult i32 %66, %44
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.critedge.i.i.i_crit_edge, label %land.lhs.true.i.i.i.fw_check_addr_valid.exit.i.i_crit_edge

land.lhs.true.i.i.i.fw_check_addr_valid.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i.i

land.lhs.true.i.i.i.for.inc.critedge.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i.i

for.inc.critedge.i.i.i:                           ; preds = %land.lhs.true.i.i.i.for.inc.critedge.i.i.i_crit_edge, %for.body.i.i.i.for.inc.critedge.i.i.i_crit_edge
  %inc.i25.i.i = add nuw i32 %i.011.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i25.i.i, i32 %58)
  %cmp.i26.i.i = icmp ult i32 %inc.i25.i.i, %58
  %exitcond.not.i.i.i = icmp eq i32 %inc.i25.i.i, %58
  br i1 %exitcond.not.i.i.i, label %for.inc.critedge.i.i.i.fw_check_addr_valid.exit.i.i_crit_edge, label %for.inc.critedge.i.i.i.for.body.i.i.i_crit_edge

for.inc.critedge.i.i.i.for.body.i.i.i_crit_edge:  ; preds = %for.inc.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

for.inc.critedge.i.i.i.fw_check_addr_valid.exit.i.i_crit_edge: ; preds = %for.inc.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i.i

fw_check_addr_valid.exit.i.i:                     ; preds = %for.inc.critedge.i.i.i.fw_check_addr_valid.exit.i.i_crit_edge, %land.lhs.true.i.i.i.fw_check_addr_valid.exit.i.i_crit_edge
  %cmp.lcssa.i.i.i = phi i1 [ %cmp.i26.i.i, %for.inc.critedge.i.i.i.fw_check_addr_valid.exit.i.i_crit_edge ], [ %cmp12.i.i.i, %land.lhs.true.i.i.i.fw_check_addr_valid.exit.i.i_crit_edge ]
  br i1 %cmp.lcssa.i.i.i, label %fw_check_addr_valid.exit.i.i.if.end.i209_crit_edge, label %fw_check_addr_valid.exit.i.i.do.end31_crit_edge

fw_check_addr_valid.exit.i.i.do.end31_crit_edge:  ; preds = %fw_check_addr_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

fw_check_addr_valid.exit.i.i.if.end.i209_crit_edge: ; preds = %fw_check_addr_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i209

if.end.i209:                                      ; preds = %fw_check_addr_valid.exit.i.i.if.end.i209_crit_edge, %if.end3.i.i.if.end.i209_crit_edge, %if.end.i.i.if.end.i209_crit_edge
  %spec.select.i = add nuw nsw i32 %offset.addr.010.i, 1
  %inc4.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, %and25
  br i1 %exitcond.not.i, label %cleanup.loopexit, label %if.end.i209.for.body.i_crit_edge

if.end.i209.for.body.i_crit_edge:                 ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end31:                                         ; preds = %fw_check_addr_valid.exit.i.i.do.end31_crit_edge, %if.end12.i.i.do.end31_crit_edge, %for.body.i.do.end31_crit_edge
  %67 = phi i32 [ %inc.i.i.i, %if.end12.i.i.do.end31_crit_edge ], [ %40, %for.body.i.do.end31_crit_edge ], [ %inc.i.i.i, %fw_check_addr_valid.exit.i.i.do.end31_crit_edge ]
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %2, align 4
  %69 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev81, align 4
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %4, align 4
  %73 = load i32, ptr %2, align 4
  %sub36 = add i32 %73, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.6, i32 noundef %and24, i32 noundef %and25, i32 noundef %72, i32 noundef %sub36) #7
  br label %cleanup137

sw.bb38:                                          ; preds = %if.end
  %shr39 = lshr i32 %19, 16
  %and40 = and i32 %shr39, 4095
  %and41 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %cmp9.not.i212 = icmp eq i32 %and41, 0
  br i1 %cmp9.not.i212, label %sw.bb38.cleanup_crit_edge, label %for.body.i221.preheader

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i221.preheader:                          ; preds = %sw.bb38
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %3, align 4
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.promoted433 = load i32, ptr %2, align 4
  br label %for.body.i221

for.body.i221:                                    ; preds = %if.end.i253.for.body.i221_crit_edge, %for.body.i221.preheader
  %77 = phi i32 [ %inc.i.i.i222, %if.end.i253.for.body.i221_crit_edge ], [ %.promoted433, %for.body.i221.preheader ]
  %i.011.i218 = phi i32 [ %inc4.i251, %if.end.i253.for.body.i221_crit_edge ], [ 0, %for.body.i221.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %75)
  %cmp.i.i.i220 = icmp eq i32 %77, %75
  br i1 %cmp.i.i.i220, label %for.body.i221.do.end47_crit_edge, label %if.end.i.i227

for.body.i221.do.end47_crit_edge:                 ; preds = %for.body.i221
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

if.end.i.i227:                                    ; preds = %for.body.i221
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %inc.i.i.i222 = add i32 %77, 1
  %arrayidx.i.i.i223 = getelementptr i32, ptr %79, i32 %77
  %80 = ptrtoint ptr %arrayidx.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i.i223, align 4
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %0, align 4
  %ops.i.i224 = getelementptr inbounds %struct.tegra_drm_client, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %ops.i.i224 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i224, align 4
  %is_addr_reg.i.i225 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %is_addr_reg.i.i225 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %is_addr_reg.i.i225, align 4
  %tobool1.not.i.i226 = icmp eq ptr %87, null
  br i1 %tobool1.not.i.i226, label %if.end.i.i227.if.end.i253_crit_edge, label %if.end3.i.i231

if.end.i.i227.if.end.i253_crit_edge:              ; preds = %if.end.i.i227
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i253

if.end3.i.i231:                                   ; preds = %if.end.i.i227
  %dev.i.i228 = getelementptr inbounds %struct.host1x_client, ptr %83, i32 0, i32 2
  %88 = ptrtoint ptr %dev.i.i228 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i228, align 4
  %90 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %4, align 4
  %call8.i.i229 = tail call i32 %87(ptr noundef %89, i32 noundef %91, i32 noundef %and40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i229)
  %tobool9.not.i.i230 = icmp eq i32 %call8.i.i229, 0
  br i1 %tobool9.not.i.i230, label %if.end3.i.i231.if.end.i253_crit_edge, label %if.end12.i.i234

if.end3.i.i231.if.end.i253_crit_edge:             ; preds = %if.end3.i.i231
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i253

if.end12.i.i234:                                  ; preds = %if.end3.i.i231
  %92 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fw, align 4
  %num_used_mappings.i.i.i232 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %num_used_mappings.i.i.i232 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_used_mappings.i.i.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp10.not.i.i.i233 = icmp eq i32 %95, 0
  br i1 %cmp10.not.i.i.i233, label %if.end12.i.i234.do.end47_crit_edge, label %for.body.lr.ph.i.i.i235

if.end12.i.i234.do.end47_crit_edge:               ; preds = %if.end12.i.i234
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

for.body.lr.ph.i.i.i235:                          ; preds = %if.end12.i.i234
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %93, align 4
  br label %for.body.i.i.i241

for.body.i.i.i241:                                ; preds = %for.inc.critedge.i.i.i248.for.body.i.i.i241_crit_edge, %for.body.lr.ph.i.i.i235
  %cmp12.i.i.i236 = phi i1 [ true, %for.body.lr.ph.i.i.i235 ], [ %cmp.i26.i.i246, %for.inc.critedge.i.i.i248.for.body.i.i.i241_crit_edge ]
  %i.011.i.i.i237 = phi i32 [ 0, %for.body.lr.ph.i.i.i235 ], [ %inc.i25.i.i245, %for.inc.critedge.i.i.i248.for.body.i.i.i241_crit_edge ]
  %arrayidx.i24.i.i238 = getelementptr %struct.tegra_drm_used_mapping, ptr %97, i32 %i.011.i.i.i237
  %98 = ptrtoint ptr %arrayidx.i24.i.i238 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i24.i.i238, align 4
  %iova.i.i.i239 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %iova.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iova.i.i.i239, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %81)
  %cmp2.not.i.i.i240 = icmp ugt i32 %101, %81
  br i1 %cmp2.not.i.i.i240, label %for.body.i.i.i241.for.inc.critedge.i.i.i248_crit_edge, label %land.lhs.true.i.i.i244

for.body.i.i.i241.for.inc.critedge.i.i.i248_crit_edge: ; preds = %for.body.i.i.i241
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i.i248

land.lhs.true.i.i.i244:                           ; preds = %for.body.i.i.i241
  %iova_end.i.i.i242 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %99, i32 0, i32 4
  %102 = ptrtoint ptr %iova_end.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iova_end.i.i.i242, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %81)
  %cmp3.not.i.i.i243 = icmp ult i32 %103, %81
  br i1 %cmp3.not.i.i.i243, label %land.lhs.true.i.i.i244.for.inc.critedge.i.i.i248_crit_edge, label %land.lhs.true.i.i.i244.fw_check_addr_valid.exit.i.i250_crit_edge

land.lhs.true.i.i.i244.fw_check_addr_valid.exit.i.i250_crit_edge: ; preds = %land.lhs.true.i.i.i244
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i.i250

land.lhs.true.i.i.i244.for.inc.critedge.i.i.i248_crit_edge: ; preds = %land.lhs.true.i.i.i244
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i.i248

for.inc.critedge.i.i.i248:                        ; preds = %land.lhs.true.i.i.i244.for.inc.critedge.i.i.i248_crit_edge, %for.body.i.i.i241.for.inc.critedge.i.i.i248_crit_edge
  %inc.i25.i.i245 = add nuw i32 %i.011.i.i.i237, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i25.i.i245, i32 %95)
  %cmp.i26.i.i246 = icmp ult i32 %inc.i25.i.i245, %95
  %exitcond.not.i.i.i247 = icmp eq i32 %inc.i25.i.i245, %95
  br i1 %exitcond.not.i.i.i247, label %for.inc.critedge.i.i.i248.fw_check_addr_valid.exit.i.i250_crit_edge, label %for.inc.critedge.i.i.i248.for.body.i.i.i241_crit_edge

for.inc.critedge.i.i.i248.for.body.i.i.i241_crit_edge: ; preds = %for.inc.critedge.i.i.i248
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i241

for.inc.critedge.i.i.i248.fw_check_addr_valid.exit.i.i250_crit_edge: ; preds = %for.inc.critedge.i.i.i248
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i.i250

fw_check_addr_valid.exit.i.i250:                  ; preds = %for.inc.critedge.i.i.i248.fw_check_addr_valid.exit.i.i250_crit_edge, %land.lhs.true.i.i.i244.fw_check_addr_valid.exit.i.i250_crit_edge
  %cmp.lcssa.i.i.i249 = phi i1 [ %cmp.i26.i.i246, %for.inc.critedge.i.i.i248.fw_check_addr_valid.exit.i.i250_crit_edge ], [ %cmp12.i.i.i236, %land.lhs.true.i.i.i244.fw_check_addr_valid.exit.i.i250_crit_edge ]
  br i1 %cmp.lcssa.i.i.i249, label %fw_check_addr_valid.exit.i.i250.if.end.i253_crit_edge, label %fw_check_addr_valid.exit.i.i250.do.end47_crit_edge

fw_check_addr_valid.exit.i.i250.do.end47_crit_edge: ; preds = %fw_check_addr_valid.exit.i.i250
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

fw_check_addr_valid.exit.i.i250.if.end.i253_crit_edge: ; preds = %fw_check_addr_valid.exit.i.i250
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i253

if.end.i253:                                      ; preds = %fw_check_addr_valid.exit.i.i250.if.end.i253_crit_edge, %if.end3.i.i231.if.end.i253_crit_edge, %if.end.i.i227.if.end.i253_crit_edge
  %inc4.i251 = add nuw nsw i32 %i.011.i218, 1
  %exitcond.not.i252 = icmp eq i32 %inc4.i251, %and41
  br i1 %exitcond.not.i252, label %cleanup.loopexit416, label %if.end.i253.for.body.i221_crit_edge

if.end.i253.for.body.i221_crit_edge:              ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i221

do.end47:                                         ; preds = %fw_check_addr_valid.exit.i.i250.do.end47_crit_edge, %if.end12.i.i234.do.end47_crit_edge, %for.body.i221.do.end47_crit_edge
  %104 = phi i32 [ %inc.i.i.i222, %if.end12.i.i234.do.end47_crit_edge ], [ %77, %for.body.i221.do.end47_crit_edge ], [ %inc.i.i.i222, %fw_check_addr_valid.exit.i.i250.do.end47_crit_edge ]
  %105 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %2, align 4
  %106 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev81, align 4
  %108 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %4, align 4
  %sub52 = add i32 %104, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.9, i32 noundef %and40, i32 noundef %and41, i32 noundef %109, i32 noundef %sub52) #7
  br label %cleanup137

sw.bb54:                                          ; preds = %if.end
  %shr55 = lshr i32 %19, 16
  %and56 = and i32 %shr55, 4095
  %conv58 = trunc i32 %19 to i16
  %call59 = call fastcc i32 @fw_check_regs_mask(ptr noundef nonnull %fw, i32 noundef %and56, i16 noundef zeroext %conv58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %sw.bb54.cleanup_crit_edge, label %do.end64

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end64:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  %and57 = and i32 %19, 65535
  %110 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev81, align 4
  %112 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %4, align 4
  %114 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %2, align 4
  %sub69 = add i32 %115, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.12, i32 noundef %and56, i32 noundef %and57, i32 noundef %113, i32 noundef %sub69) #7
  br label %cleanup137

sw.bb71:                                          ; preds = %if.end
  %shr72 = lshr i32 %19, 16
  %and73 = and i32 %shr72, 4095
  %116 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %0, align 4
  %ops.i257 = getelementptr inbounds %struct.tegra_drm_client, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %ops.i257 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i257, align 4
  %is_addr_reg.i = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %is_addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %is_addr_reg.i, align 4
  %dev.i = getelementptr inbounds %struct.host1x_client, ptr %117, i32 0, i32 2
  %122 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i, align 4
  %124 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %4, align 4
  %call.i258 = tail call i32 %121(ptr noundef %123, i32 noundef %125, i32 noundef %and73) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool.not.i259 = icmp eq i32 %call.i258, 0
  br i1 %tobool.not.i259, label %sw.bb71.cleanup_crit_edge, label %cleanup.thread

sw.bb71.cleanup_crit_edge:                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.thread:                                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #6
  %126 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev81, align 4
  %128 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %4, align 4
  %130 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %2, align 4
  %sub84 = add i32 %131, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.15, i32 noundef %and73, i32 noundef %129, i32 noundef %sub84) #7
  br label %cleanup137

sw.bb86:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and87 = and i32 %19, 65535
  br label %cleanup

sw.bb88:                                          ; preds = %if.end
  br i1 %payload_valid.0.off0449, label %if.end91, label %sw.bb88.cleanup137_crit_edge

sw.bb88.cleanup137_crit_edge:                     ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup137

if.end91:                                         ; preds = %sw.bb88
  %and92 = and i32 %19, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload.0450)
  %cmp9.not.i262 = icmp eq i32 %payload.0450, 0
  br i1 %cmp9.not.i262, label %if.end91.cleanup_crit_edge, label %for.body.i271.preheader

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i271.preheader:                          ; preds = %if.end91
  %132 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %3, align 4
  %134 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.promoted432 = load i32, ptr %2, align 4
  br label %for.body.i271

for.body.i271:                                    ; preds = %if.end.i304.for.body.i271_crit_edge, %for.body.i271.preheader
  %135 = phi i32 [ %inc.i.i.i272, %if.end.i304.for.body.i271_crit_edge ], [ %.promoted432, %for.body.i271.preheader ]
  %i.011.i268 = phi i32 [ %inc4.i302, %if.end.i304.for.body.i271_crit_edge ], [ 0, %for.body.i271.preheader ]
  %offset.addr.010.i269 = phi i32 [ %spec.select.i301, %if.end.i304.for.body.i271_crit_edge ], [ %and92, %for.body.i271.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %133)
  %cmp.i.i.i270 = icmp eq i32 %135, %133
  br i1 %cmp.i.i.i270, label %for.body.i271.do.end98_crit_edge, label %if.end.i.i277

for.body.i271.do.end98_crit_edge:                 ; preds = %for.body.i271
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end98

if.end.i.i277:                                    ; preds = %for.body.i271
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %inc.i.i.i272 = add i32 %135, 1
  %arrayidx.i.i.i273 = getelementptr i32, ptr %137, i32 %135
  %138 = ptrtoint ptr %arrayidx.i.i.i273 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.i.i.i273, align 4
  %140 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %0, align 4
  %ops.i.i274 = getelementptr inbounds %struct.tegra_drm_client, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %ops.i.i274 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops.i.i274, align 4
  %is_addr_reg.i.i275 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %is_addr_reg.i.i275 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %is_addr_reg.i.i275, align 4
  %tobool1.not.i.i276 = icmp eq ptr %145, null
  br i1 %tobool1.not.i.i276, label %if.end.i.i277.if.end.i304_crit_edge, label %if.end3.i.i281

if.end.i.i277.if.end.i304_crit_edge:              ; preds = %if.end.i.i277
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i304

if.end3.i.i281:                                   ; preds = %if.end.i.i277
  %dev.i.i278 = getelementptr inbounds %struct.host1x_client, ptr %141, i32 0, i32 2
  %146 = ptrtoint ptr %dev.i.i278 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i.i278, align 4
  %148 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %4, align 4
  %call8.i.i279 = tail call i32 %145(ptr noundef %147, i32 noundef %149, i32 noundef %offset.addr.010.i269) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i279)
  %tobool9.not.i.i280 = icmp eq i32 %call8.i.i279, 0
  br i1 %tobool9.not.i.i280, label %if.end3.i.i281.if.end.i304_crit_edge, label %if.end12.i.i284

if.end3.i.i281.if.end.i304_crit_edge:             ; preds = %if.end3.i.i281
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i304

if.end12.i.i284:                                  ; preds = %if.end3.i.i281
  %150 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %fw, align 4
  %num_used_mappings.i.i.i282 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %num_used_mappings.i.i.i282 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_used_mappings.i.i.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp10.not.i.i.i283 = icmp eq i32 %153, 0
  br i1 %cmp10.not.i.i.i283, label %if.end12.i.i284.do.end98_crit_edge, label %for.body.lr.ph.i.i.i285

if.end12.i.i284.do.end98_crit_edge:               ; preds = %if.end12.i.i284
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end98

for.body.lr.ph.i.i.i285:                          ; preds = %if.end12.i.i284
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %151, align 4
  br label %for.body.i.i.i291

for.body.i.i.i291:                                ; preds = %for.inc.critedge.i.i.i298.for.body.i.i.i291_crit_edge, %for.body.lr.ph.i.i.i285
  %cmp12.i.i.i286 = phi i1 [ true, %for.body.lr.ph.i.i.i285 ], [ %cmp.i26.i.i296, %for.inc.critedge.i.i.i298.for.body.i.i.i291_crit_edge ]
  %i.011.i.i.i287 = phi i32 [ 0, %for.body.lr.ph.i.i.i285 ], [ %inc.i25.i.i295, %for.inc.critedge.i.i.i298.for.body.i.i.i291_crit_edge ]
  %arrayidx.i24.i.i288 = getelementptr %struct.tegra_drm_used_mapping, ptr %155, i32 %i.011.i.i.i287
  %156 = ptrtoint ptr %arrayidx.i24.i.i288 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i24.i.i288, align 4
  %iova.i.i.i289 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %iova.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %iova.i.i.i289, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %139)
  %cmp2.not.i.i.i290 = icmp ugt i32 %159, %139
  br i1 %cmp2.not.i.i.i290, label %for.body.i.i.i291.for.inc.critedge.i.i.i298_crit_edge, label %land.lhs.true.i.i.i294

for.body.i.i.i291.for.inc.critedge.i.i.i298_crit_edge: ; preds = %for.body.i.i.i291
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i.i298

land.lhs.true.i.i.i294:                           ; preds = %for.body.i.i.i291
  %iova_end.i.i.i292 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %157, i32 0, i32 4
  %160 = ptrtoint ptr %iova_end.i.i.i292 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %iova_end.i.i.i292, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %139)
  %cmp3.not.i.i.i293 = icmp ult i32 %161, %139
  br i1 %cmp3.not.i.i.i293, label %land.lhs.true.i.i.i294.for.inc.critedge.i.i.i298_crit_edge, label %land.lhs.true.i.i.i294.fw_check_addr_valid.exit.i.i300_crit_edge

land.lhs.true.i.i.i294.fw_check_addr_valid.exit.i.i300_crit_edge: ; preds = %land.lhs.true.i.i.i294
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i.i300

land.lhs.true.i.i.i294.for.inc.critedge.i.i.i298_crit_edge: ; preds = %land.lhs.true.i.i.i294
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i.i298

for.inc.critedge.i.i.i298:                        ; preds = %land.lhs.true.i.i.i294.for.inc.critedge.i.i.i298_crit_edge, %for.body.i.i.i291.for.inc.critedge.i.i.i298_crit_edge
  %inc.i25.i.i295 = add nuw i32 %i.011.i.i.i287, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i25.i.i295, i32 %153)
  %cmp.i26.i.i296 = icmp ult i32 %inc.i25.i.i295, %153
  %exitcond.not.i.i.i297 = icmp eq i32 %inc.i25.i.i295, %153
  br i1 %exitcond.not.i.i.i297, label %for.inc.critedge.i.i.i298.fw_check_addr_valid.exit.i.i300_crit_edge, label %for.inc.critedge.i.i.i298.for.body.i.i.i291_crit_edge

for.inc.critedge.i.i.i298.for.body.i.i.i291_crit_edge: ; preds = %for.inc.critedge.i.i.i298
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i291

for.inc.critedge.i.i.i298.fw_check_addr_valid.exit.i.i300_crit_edge: ; preds = %for.inc.critedge.i.i.i298
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i.i300

fw_check_addr_valid.exit.i.i300:                  ; preds = %for.inc.critedge.i.i.i298.fw_check_addr_valid.exit.i.i300_crit_edge, %land.lhs.true.i.i.i294.fw_check_addr_valid.exit.i.i300_crit_edge
  %cmp.lcssa.i.i.i299 = phi i1 [ %cmp.i26.i.i296, %for.inc.critedge.i.i.i298.fw_check_addr_valid.exit.i.i300_crit_edge ], [ %cmp12.i.i.i286, %land.lhs.true.i.i.i294.fw_check_addr_valid.exit.i.i300_crit_edge ]
  br i1 %cmp.lcssa.i.i.i299, label %fw_check_addr_valid.exit.i.i300.if.end.i304_crit_edge, label %fw_check_addr_valid.exit.i.i300.do.end98_crit_edge

fw_check_addr_valid.exit.i.i300.do.end98_crit_edge: ; preds = %fw_check_addr_valid.exit.i.i300
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end98

fw_check_addr_valid.exit.i.i300.if.end.i304_crit_edge: ; preds = %fw_check_addr_valid.exit.i.i300
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i304

if.end.i304:                                      ; preds = %fw_check_addr_valid.exit.i.i300.if.end.i304_crit_edge, %if.end3.i.i281.if.end.i304_crit_edge, %if.end.i.i277.if.end.i304_crit_edge
  %spec.select.i301 = add i32 %offset.addr.010.i269, 1
  %inc4.i302 = add nuw i32 %i.011.i268, 1
  %exitcond.not.i303 = icmp eq i32 %inc4.i302, %payload.0450
  br i1 %exitcond.not.i303, label %cleanup.loopexit417, label %if.end.i304.for.body.i271_crit_edge

if.end.i304.for.body.i271_crit_edge:              ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i271

do.end98:                                         ; preds = %fw_check_addr_valid.exit.i.i300.do.end98_crit_edge, %if.end12.i.i284.do.end98_crit_edge, %for.body.i271.do.end98_crit_edge
  %162 = phi i32 [ %inc.i.i.i272, %if.end12.i.i284.do.end98_crit_edge ], [ %135, %for.body.i271.do.end98_crit_edge ], [ %inc.i.i.i272, %fw_check_addr_valid.exit.i.i300.do.end98_crit_edge ]
  %163 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %2, align 4
  %164 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev81, align 4
  %166 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %4, align 4
  %sub103 = add i32 %162, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %165, ptr noundef nonnull @.str.18, i32 noundef %and92, i32 noundef %167, i32 noundef %sub103) #7
  br label %cleanup137

sw.bb105:                                         ; preds = %if.end
  br i1 %payload_valid.0.off0449, label %if.end108, label %sw.bb105.cleanup137_crit_edge

sw.bb105.cleanup137_crit_edge:                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup137

if.end108:                                        ; preds = %sw.bb105
  %and109 = and i32 %19, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload.0450)
  %cmp9.not.i308 = icmp eq i32 %payload.0450, 0
  br i1 %cmp9.not.i308, label %if.end108.cleanup_crit_edge, label %for.body.i317.preheader

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i317.preheader:                          ; preds = %if.end108
  %168 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %168)
  %.promoted = load i32, ptr %2, align 4
  %169 = add i32 %payload.0450, %.promoted
  br label %for.body.i317

for.body.i317:                                    ; preds = %if.end.i349.for.body.i317_crit_edge, %for.body.i317.preheader
  %170 = phi i32 [ %inc.i.i.i318, %if.end.i349.for.body.i317_crit_edge ], [ %.promoted, %for.body.i317.preheader ]
  %i.011.i314 = phi i32 [ %inc4.i347, %if.end.i349.for.body.i317_crit_edge ], [ 0, %for.body.i317.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %13)
  %cmp.i.i.i316 = icmp eq i32 %170, %13
  br i1 %cmp.i.i.i316, label %for.body.i317.do.end115_crit_edge, label %if.end.i.i323

for.body.i317.do.end115_crit_edge:                ; preds = %for.body.i317
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end115

if.end.i.i323:                                    ; preds = %for.body.i317
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %inc.i.i.i318 = add i32 %170, 1
  %arrayidx.i.i.i319 = getelementptr i32, ptr %172, i32 %170
  %173 = ptrtoint ptr %arrayidx.i.i.i319 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.i.i.i319, align 4
  %175 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %0, align 4
  %ops.i.i320 = getelementptr inbounds %struct.tegra_drm_client, ptr %176, i32 0, i32 5
  %177 = ptrtoint ptr %ops.i.i320 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ops.i.i320, align 4
  %is_addr_reg.i.i321 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %is_addr_reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %is_addr_reg.i.i321, align 4
  %tobool1.not.i.i322 = icmp eq ptr %180, null
  br i1 %tobool1.not.i.i322, label %if.end.i.i323.if.end.i349_crit_edge, label %if.end3.i.i327

if.end.i.i323.if.end.i349_crit_edge:              ; preds = %if.end.i.i323
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i349

if.end3.i.i327:                                   ; preds = %if.end.i.i323
  %dev.i.i324 = getelementptr inbounds %struct.host1x_client, ptr %176, i32 0, i32 2
  %181 = ptrtoint ptr %dev.i.i324 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev.i.i324, align 4
  %183 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %4, align 4
  %call8.i.i325 = tail call i32 %180(ptr noundef %182, i32 noundef %184, i32 noundef %and109) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i325)
  %tobool9.not.i.i326 = icmp eq i32 %call8.i.i325, 0
  br i1 %tobool9.not.i.i326, label %if.end3.i.i327.if.end.i349_crit_edge, label %if.end12.i.i330

if.end3.i.i327.if.end.i349_crit_edge:             ; preds = %if.end3.i.i327
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i349

if.end12.i.i330:                                  ; preds = %if.end3.i.i327
  %185 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %fw, align 4
  %num_used_mappings.i.i.i328 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %num_used_mappings.i.i.i328 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %num_used_mappings.i.i.i328, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp10.not.i.i.i329 = icmp eq i32 %188, 0
  br i1 %cmp10.not.i.i.i329, label %if.end12.i.i330.do.end115_crit_edge, label %for.body.lr.ph.i.i.i331

if.end12.i.i330.do.end115_crit_edge:              ; preds = %if.end12.i.i330
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end115

for.body.lr.ph.i.i.i331:                          ; preds = %if.end12.i.i330
  %189 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %186, align 4
  br label %for.body.i.i.i337

for.body.i.i.i337:                                ; preds = %for.inc.critedge.i.i.i344.for.body.i.i.i337_crit_edge, %for.body.lr.ph.i.i.i331
  %cmp12.i.i.i332 = phi i1 [ true, %for.body.lr.ph.i.i.i331 ], [ %cmp.i26.i.i342, %for.inc.critedge.i.i.i344.for.body.i.i.i337_crit_edge ]
  %i.011.i.i.i333 = phi i32 [ 0, %for.body.lr.ph.i.i.i331 ], [ %inc.i25.i.i341, %for.inc.critedge.i.i.i344.for.body.i.i.i337_crit_edge ]
  %arrayidx.i24.i.i334 = getelementptr %struct.tegra_drm_used_mapping, ptr %190, i32 %i.011.i.i.i333
  %191 = ptrtoint ptr %arrayidx.i24.i.i334 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i24.i.i334, align 4
  %iova.i.i.i335 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %iova.i.i.i335 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %iova.i.i.i335, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %174)
  %cmp2.not.i.i.i336 = icmp ugt i32 %194, %174
  br i1 %cmp2.not.i.i.i336, label %for.body.i.i.i337.for.inc.critedge.i.i.i344_crit_edge, label %land.lhs.true.i.i.i340

for.body.i.i.i337.for.inc.critedge.i.i.i344_crit_edge: ; preds = %for.body.i.i.i337
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i.i344

land.lhs.true.i.i.i340:                           ; preds = %for.body.i.i.i337
  %iova_end.i.i.i338 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %192, i32 0, i32 4
  %195 = ptrtoint ptr %iova_end.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %iova_end.i.i.i338, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %174)
  %cmp3.not.i.i.i339 = icmp ult i32 %196, %174
  br i1 %cmp3.not.i.i.i339, label %land.lhs.true.i.i.i340.for.inc.critedge.i.i.i344_crit_edge, label %land.lhs.true.i.i.i340.fw_check_addr_valid.exit.i.i346_crit_edge

land.lhs.true.i.i.i340.fw_check_addr_valid.exit.i.i346_crit_edge: ; preds = %land.lhs.true.i.i.i340
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i.i346

land.lhs.true.i.i.i340.for.inc.critedge.i.i.i344_crit_edge: ; preds = %land.lhs.true.i.i.i340
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i.i344

for.inc.critedge.i.i.i344:                        ; preds = %land.lhs.true.i.i.i340.for.inc.critedge.i.i.i344_crit_edge, %for.body.i.i.i337.for.inc.critedge.i.i.i344_crit_edge
  %inc.i25.i.i341 = add nuw i32 %i.011.i.i.i333, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i25.i.i341, i32 %188)
  %cmp.i26.i.i342 = icmp ult i32 %inc.i25.i.i341, %188
  %exitcond.not.i.i.i343 = icmp eq i32 %inc.i25.i.i341, %188
  br i1 %exitcond.not.i.i.i343, label %for.inc.critedge.i.i.i344.fw_check_addr_valid.exit.i.i346_crit_edge, label %for.inc.critedge.i.i.i344.for.body.i.i.i337_crit_edge

for.inc.critedge.i.i.i344.for.body.i.i.i337_crit_edge: ; preds = %for.inc.critedge.i.i.i344
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i337

for.inc.critedge.i.i.i344.fw_check_addr_valid.exit.i.i346_crit_edge: ; preds = %for.inc.critedge.i.i.i344
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i.i346

fw_check_addr_valid.exit.i.i346:                  ; preds = %for.inc.critedge.i.i.i344.fw_check_addr_valid.exit.i.i346_crit_edge, %land.lhs.true.i.i.i340.fw_check_addr_valid.exit.i.i346_crit_edge
  %cmp.lcssa.i.i.i345 = phi i1 [ %cmp.i26.i.i342, %for.inc.critedge.i.i.i344.fw_check_addr_valid.exit.i.i346_crit_edge ], [ %cmp12.i.i.i332, %land.lhs.true.i.i.i340.fw_check_addr_valid.exit.i.i346_crit_edge ]
  br i1 %cmp.lcssa.i.i.i345, label %fw_check_addr_valid.exit.i.i346.if.end.i349_crit_edge, label %fw_check_addr_valid.exit.i.i346.do.end115_crit_edge

fw_check_addr_valid.exit.i.i346.do.end115_crit_edge: ; preds = %fw_check_addr_valid.exit.i.i346
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end115

fw_check_addr_valid.exit.i.i346.if.end.i349_crit_edge: ; preds = %fw_check_addr_valid.exit.i.i346
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i349

if.end.i349:                                      ; preds = %fw_check_addr_valid.exit.i.i346.if.end.i349_crit_edge, %if.end3.i.i327.if.end.i349_crit_edge, %if.end.i.i323.if.end.i349_crit_edge
  %inc4.i347 = add nuw i32 %i.011.i314, 1
  %exitcond.not.i348 = icmp eq i32 %inc4.i347, %payload.0450
  br i1 %exitcond.not.i348, label %cleanup.loopexit383, label %if.end.i349.for.body.i317_crit_edge

if.end.i349.for.body.i317_crit_edge:              ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i317

do.end115:                                        ; preds = %fw_check_addr_valid.exit.i.i346.do.end115_crit_edge, %if.end12.i.i330.do.end115_crit_edge, %for.body.i317.do.end115_crit_edge
  %197 = phi i32 [ %inc.i.i.i318, %if.end12.i.i330.do.end115_crit_edge ], [ %13, %for.body.i317.do.end115_crit_edge ], [ %inc.i.i.i318, %fw_check_addr_valid.exit.i.i346.do.end115_crit_edge ]
  %198 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %2, align 4
  %199 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev81, align 4
  %201 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %4, align 4
  %sub120 = add i32 %197, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %200, ptr noundef nonnull @.str.21, i32 noundef %and109, i32 noundef %202, i32 noundef %sub120) #7
  br label %cleanup137

do.end124:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %203 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev81, align 4
  %205 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %2, align 4
  %sub128 = add i32 %206, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %204, ptr noundef nonnull @.str.24, i32 noundef %sub128) #7
  br label %cleanup137

cleanup.loopexit383:                              ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #6
  %207 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %169, ptr %2, align 4
  br label %cleanup

cleanup.loopexit416:                              ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #6
  %208 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %inc.i.i.i222, ptr %2, align 4
  br label %cleanup

cleanup.loopexit417:                              ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #6
  %209 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %inc.i.i.i272, ptr %2, align 4
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #6
  %210 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %inc.i.i.i, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %cleanup.loopexit417, %cleanup.loopexit416, %cleanup.loopexit383, %if.end108.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %sw.bb86, %sw.bb71.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %payload_valid.1.off0 = phi i1 [ true, %sw.bb86 ], [ %payload_valid.0.off0449, %sw.bb71.cleanup_crit_edge ], [ %payload_valid.0.off0449, %sw.bb54.cleanup_crit_edge ], [ %payload_valid.0.off0449, %if.end17.cleanup_crit_edge ], [ %payload_valid.0.off0449, %sw.bb22.cleanup_crit_edge ], [ %payload_valid.0.off0449, %sw.bb38.cleanup_crit_edge ], [ true, %if.end91.cleanup_crit_edge ], [ true, %if.end108.cleanup_crit_edge ], [ true, %cleanup.loopexit383 ], [ %payload_valid.0.off0449, %cleanup.loopexit416 ], [ true, %cleanup.loopexit417 ], [ %payload_valid.0.off0449, %cleanup.loopexit ]
  %payload.1 = phi i32 [ %and87, %sw.bb86 ], [ %payload.0450, %sw.bb71.cleanup_crit_edge ], [ %payload.0450, %sw.bb54.cleanup_crit_edge ], [ %payload.0450, %if.end17.cleanup_crit_edge ], [ %payload.0450, %sw.bb22.cleanup_crit_edge ], [ %payload.0450, %sw.bb38.cleanup_crit_edge ], [ 0, %if.end91.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ], [ %payload.0450, %cleanup.loopexit383 ], [ %payload.0450, %cleanup.loopexit416 ], [ %payload.0450, %cleanup.loopexit417 ], [ %payload.0450, %cleanup.loopexit ]
  %211 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %2, align 4
  %213 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %3, align 4
  %cmp.not = icmp eq i32 %212, %214
  br i1 %cmp.not, label %cleanup.cleanup137_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cleanup.cleanup137_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup137

cleanup137:                                       ; preds = %cleanup.cleanup137_crit_edge, %do.end124, %do.end115, %sw.bb105.cleanup137_crit_edge, %do.end98, %sw.bb88.cleanup137_crit_edge, %cleanup.thread, %do.end64, %do.end47, %do.end31, %do.end, %entry.cleanup137_crit_edge
  %retval.2 = phi i32 [ -22, %do.end124 ], [ %err.0357, %do.end ], [ -22, %do.end31 ], [ -22, %do.end47 ], [ %call59, %do.end64 ], [ -22, %do.end98 ], [ -22, %do.end115 ], [ -22, %cleanup.thread ], [ 0, %entry.cleanup137_crit_edge ], [ -22, %sw.bb105.cleanup137_crit_edge ], [ -22, %sw.bb88.cleanup137_crit_edge ], [ 0, %cleanup.cleanup137_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fw) #4
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_check_regs_mask(ptr nocapture noundef %fw, i32 noundef %offset, i16 noundef zeroext %mask) unnamed_addr #0 align 64 {
entry:
  %bmask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bmask) #4
  %conv = zext i16 %mask to i32
  %0 = ptrtoint ptr %bmask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %bmask, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %bmask, i32 noundef 16, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp10 = icmp ult i32 %call, 16
  br i1 %cmp10, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pos.i.i = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 3
  %end.i.i = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 4
  %data.i.i = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 2
  %client.i = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 1
  %class.i = getelementptr inbounds %struct.tegra_drm_firewall, ptr %fw, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bit.011 = phi i32 [ %call, %for.body.lr.ph ], [ %call4, %for.inc.for.body_crit_edge ]
  %add = add i32 %bit.011, %offset
  %1 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pos.i.i, align 4
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.i.i = icmp eq i32 %2, %4
  br i1 %cmp.i.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %inc.i.i = add i32 %2, 1
  %7 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc.i.i, ptr %pos.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %6, i32 %2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %ops.i = getelementptr inbounds %struct.tegra_drm_client, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %is_addr_reg.i = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %is_addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %is_addr_reg.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.end.i.for.inc_crit_edge, label %if.end3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end3.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.host1x_client, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %class.i, align 4
  %call8.i = call i32 %15(ptr noundef %17, i32 noundef %19, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end3.i.for.inc_crit_edge, label %if.end12.i

if.end3.i.for.inc_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end12.i:                                       ; preds = %if.end3.i
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  %num_used_mappings.i.i = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %num_used_mappings.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_used_mappings.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp10.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp10.not.i.i, label %if.end12.i.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end12.i
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.critedge.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cmp12.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %cmp.i26.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ]
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i25.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i24.i = getelementptr %struct.tegra_drm_used_mapping, ptr %25, i32 %i.011.i.i
  %26 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i24.i, align 4
  %iova.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iova.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %9)
  %cmp2.not.i.i = icmp ugt i32 %29, %9
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.critedge.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.critedge.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %iova_end.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %iova_end.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iova_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %9)
  %cmp3.not.i.i = icmp ult i32 %31, %9
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge, label %land.lhs.true.i.i.fw_check_addr_valid.exit.i_crit_edge

land.lhs.true.i.i.fw_check_addr_valid.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i

land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge.i.i

for.inc.critedge.i.i:                             ; preds = %land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge, %for.body.i.i.for.inc.critedge.i.i_crit_edge
  %inc.i25.i = add nuw i32 %i.011.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i25.i, i32 %23)
  %cmp.i26.i = icmp ult i32 %inc.i25.i, %23
  %exitcond.not.i.i = icmp eq i32 %inc.i25.i, %23
  br i1 %exitcond.not.i.i, label %for.inc.critedge.i.i.fw_check_addr_valid.exit.i_crit_edge, label %for.inc.critedge.i.i.for.body.i.i_crit_edge

for.inc.critedge.i.i.for.body.i.i_crit_edge:      ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.critedge.i.i.fw_check_addr_valid.exit.i_crit_edge: ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_check_addr_valid.exit.i

fw_check_addr_valid.exit.i:                       ; preds = %for.inc.critedge.i.i.fw_check_addr_valid.exit.i_crit_edge, %land.lhs.true.i.i.fw_check_addr_valid.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp.i26.i, %for.inc.critedge.i.i.fw_check_addr_valid.exit.i_crit_edge ], [ %cmp12.i.i, %land.lhs.true.i.i.fw_check_addr_valid.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %fw_check_addr_valid.exit.i.for.inc_crit_edge, label %fw_check_addr_valid.exit.i.cleanup_crit_edge

fw_check_addr_valid.exit.i.cleanup_crit_edge:     ; preds = %fw_check_addr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

fw_check_addr_valid.exit.i.for.inc_crit_edge:     ; preds = %fw_check_addr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %fw_check_addr_valid.exit.i.for.inc_crit_edge, %if.end3.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %add3 = add i32 %bit.011, 1
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %bmask, i32 noundef 16, i32 noundef %add3) #4
  %cmp = icmp ult i32 %call4, 16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %fw_check_addr_valid.exit.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end12.i.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %fw_check_addr_valid.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bmask) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/firewall.c", i32 177, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tegra_drm_fw_validate._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tegra_drm_fw_validate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tegra/firewall.c", i32 186, i32 5}
!10 = !{ptr @tegra_drm_fw_validate._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @tegra_drm_fw_validate._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/firewall.c", i32 195, i32 5}
!14 = !{ptr @tegra_drm_fw_validate._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @tegra_drm_fw_validate._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tegra/firewall.c", i32 204, i32 5}
!18 = !{ptr @tegra_drm_fw_validate._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tegra_drm_fw_validate._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tegra/firewall.c", i32 213, i32 5}
!22 = !{ptr @tegra_drm_fw_validate._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_drm_fw_validate._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tegra/firewall.c", i32 228, i32 5}
!26 = !{ptr @tegra_drm_fw_validate._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_drm_fw_validate._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/firewall.c", i32 239, i32 5}
!30 = !{ptr @tegra_drm_fw_validate._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_drm_fw_validate._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/firewall.c", i32 244, i32 4}
!34 = !{ptr @tegra_drm_fw_validate._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tegra_drm_fw_validate._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
