; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/sr_device.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/sr_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_sr_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon.43, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon.43 = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.omap_volt_data = type { i32, i32, i8, i8 }
%struct.omap_sr_nvalue_table = type { i32, i32, i32, i32 }

@sr_enable_on_init = internal global { i1, [31 x i8] } zeroinitializer, align 32
@omap4_sr_instances = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4], [20 x i8] zeroinitializer }, align 32
@dra7_sr_instances = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smartreflex_%s\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smartreflex\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@sr_init_by_name.i = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smartreflex_mpu_iva\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smartreflex_mpu\00", [16 x i8] zeroinitializer }, align 32
@omap_sr_pdata = external dso_local global [3 x %struct.omap_sr_data], align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smartreflex_core\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smartreflex_iva\00", [16 x i8] zeroinitializer }, align 32
@sr_init_by_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Unknown instance %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sr_init_by_name\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/mach-omap2/sr_device.c\00", [32 x i8] zeroinitializer }, align 32
@sr_init_by_name._entry_ptr = internal global ptr @sr_init_by_name._entry, section ".printk_index", align 4
@sr_init_by_name._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Unable to get voltage domain pointer for VDD %s\0A\00", [41 x i8] zeroinitializer }, align 32
@sr_init_by_name._entry_ptr.14 = internal global ptr @sr_init_by_name._entry.12, section ".printk_index", align 4
@sr_init_by_name._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.11, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: No Voltage table registered for VDD%d\0A\00", [51 x i8] zeroinitializer }, align 32
@sr_init_by_name._entry_ptr.17 = internal global ptr @sr_init_by_name._entry.15, section ".printk_index", align 4
@sr_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.11, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: No voltage domain specified for %s. Cannot initialize\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sr_dev_init\00", [20 x i8] zeroinitializer }, align 32
@sr_dev_init._entry_ptr = internal global ptr @sr_dev_init._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"sr_enable_on_init\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"omap4_sr_instances\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 185, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"dra7_sr_instances\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 191, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 214, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 222, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 186, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 187, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 188, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 95, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 97, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 98, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 100, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 102, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 106, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 133, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 140, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [35 x i8] c"../arch/arm/mach-omap2/sr_device.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 162, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @sr_dev_init._entry, ptr @sr_dev_init._entry_ptr, ptr @sr_init_by_name._entry, ptr @sr_init_by_name._entry.12, ptr @sr_init_by_name._entry.15, ptr @sr_init_by_name._entry_ptr, ptr @sr_init_by_name._entry_ptr.14, ptr @sr_init_by_name._entry_ptr.17, ptr @sr_enable_on_init, ptr @omap4_sr_instances, ptr @dra7_sr_instances, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sr_init_by_name.i, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_enable_on_init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_sr_instances to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_sr_instances to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_init_by_name.i to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_init_by_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_init_by_name._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_init_by_name._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap_enable_smartreflex_on_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @sr_enable_on_init, align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_devinit_smartreflex() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #8
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.else:                                          ; preds = %entry
  %call.i19 = tail call i32 @omap_rev() #8
  %shr.mask.i = and i32 %call.i19, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %cmp.i20.not = icmp eq i32 %shr.mask.i, 117440512
  br i1 %cmp.i20.not, label %if.else.if.end4_crit_edge, label %if.end10

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %sr_inst.0 = phi ptr [ @omap4_sr_instances, %entry.if.end4_crit_edge ], [ @dra7_sr_instances, %if.else.if.end4_crit_edge ]
  %nr_sr.0 = phi i32 [ 3, %entry.if.end4_crit_edge ], [ 2, %if.else.if.end4_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4
  %i.025 = phi i32 [ 0, %if.end4 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %sr_inst.0, i32 %i.025
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %1) #8
  %call9 = tail call fastcc i32 @sr_init_by_name(ptr noundef %call7, ptr noundef %1) #11
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %nr_sr.0
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @omap_hwmod_for_each_by_class(ptr noundef nonnull @.str.1, ptr noundef nonnull @sr_dev_init, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sr_init_by_name(ptr noundef %name, ptr noundef %voltdm) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %volt_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %volt_data) #8
  %0 = ptrtoint ptr %volt_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %volt_data, align 4, !annotation !54
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(20) @.str.5, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %lor.lhs.false

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.6, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end15_crit_edge, label %if.else

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.7, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end15_crit_edge, label %if.end11

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end11:                                         ; preds = %if.else
  %call7 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.8, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11.if.end15_crit_edge, label %do.end

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %name) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11.if.end15_crit_edge, %if.else.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge, %entry.if.end15_crit_edge
  %sr_data.095 = phi ptr [ getelementptr inbounds ([3 x %struct.omap_sr_data], ptr @omap_sr_pdata, i32 0, i32 2), %if.end11.if.end15_crit_edge ], [ getelementptr inbounds ([3 x %struct.omap_sr_data], ptr @omap_sr_pdata, i32 0, i32 1), %if.else.if.end15_crit_edge ], [ @omap_sr_pdata, %entry.if.end15_crit_edge ], [ @omap_sr_pdata, %lor.lhs.false.if.end15_crit_edge ]
  %1 = ptrtoint ptr %sr_data.095 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %sr_data.095, align 4
  %call.i = tail call i32 @omap_rev() #8
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 875560960, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 875560960
  %spec.select = select i1 %cmp.i.not, i32 1, i32 2
  %2 = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %senn_mod = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 3
  %4 = ptrtoint ptr %senn_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %senn_mod, align 4
  %senp_mod = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 2
  %5 = ptrtoint ptr %senp_mod to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %senp_mod, align 4
  %call.i86 = tail call i32 @omap_rev() #8
  %and.i = and i32 %call.i86, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i87.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i87.not, label %if.end15.if.then28_crit_edge, label %lor.lhs.false25

if.end15.if.then28_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false25:                                  ; preds = %if.end15
  %call.i89 = tail call i32 @omap_rev() #8
  %and.i90 = and i32 %call.i89, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i90)
  %cmp.i91.not = icmp eq i32 %and.i90, 68
  br i1 %cmp.i91.not, label %lor.lhs.false25.if.then28_crit_edge, label %lor.lhs.false25.if.end37_crit_edge

lor.lhs.false25.if.end37_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

lor.lhs.false25.if.then28_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false25.if.then28_crit_edge, %if.end15.if.then28_crit_edge
  %err_weight = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 4
  %6 = ptrtoint ptr %err_weight to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %err_weight, align 4
  %err_maxlimit = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 5
  %7 = ptrtoint ptr %err_maxlimit to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %err_maxlimit, align 4
  %accum_data = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 6
  %8 = ptrtoint ptr %accum_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 500, ptr %accum_data, align 4
  %9 = ptrtoint ptr %sr_data.095 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sr_data.095, align 4
  %call30 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(16) @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %senn_avgweight = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 7
  %. = select i1 %tobool31.not, i32 3, i32 1
  %11 = ptrtoint ptr %senn_avgweight to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %., ptr %senn_avgweight, align 4
  %senp_avgweight = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 8
  %12 = ptrtoint ptr %senp_avgweight to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %., ptr %senp_avgweight, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %lor.lhs.false25.if.end37_crit_edge
  %call38 = tail call ptr @voltdm_lookup(ptr noundef %voltdm) #8
  %voltdm39 = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 12
  %13 = ptrtoint ptr %voltdm39 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call38, ptr %voltdm39, align 4
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10, ptr noundef %voltdm) #12
  br label %exit

if.end48:                                         ; preds = %if.end37
  call void @omap_voltage_get_volttable(ptr noundef nonnull %call38, ptr noundef nonnull %volt_data) #8
  %14 = ptrtoint ptr %volt_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %volt_data, align 4
  %tobool50.not = icmp eq ptr %15, null
  br i1 %tobool50.not, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @sr_init_by_name.i, align 4
  %add = add i32 %16, 1
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef %add) #12
  br label %exit

if.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @sr_set_nvalues(ptr noundef nonnull %15, ptr noundef %sr_data.095) #11
  %.b84 = load i1, ptr @sr_enable_on_init, align 1
  %enable_on_init = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data.095, i32 0, i32 10
  %frombool = zext i1 %.b84 to i8
  %17 = ptrtoint ptr %enable_on_init to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %enable_on_init, align 4
  br label %exit

exit:                                             ; preds = %if.end57, %do.end54, %do.end45
  %18 = load i32, ptr @sr_init_by_name.i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr @sr_init_by_name.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end
  %retval.0 = phi i32 [ 0, %exit ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %volt_data) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_for_each_by_class(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_dev_init(ptr nocapture noundef readonly %oh, ptr nocapture noundef readnone %user) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_attr = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 11
  %0 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_attr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oh, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oh, align 4
  %call4 = tail call fastcc i32 @sr_init_by_name(ptr noundef %7, ptr noundef nonnull %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @voltdm_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_voltage_get_volttable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sr_set_nvalues(ptr nocapture noundef readonly %volt_data, ptr nocapture noundef writeonly %sr_data) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvalue_count = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data, i32 0, i32 9
  %0 = ptrtoint ptr %nvalue_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nvalue_count, align 4
  %nvalue_table1 = getelementptr inbounds %struct.omap_sr_data, ptr %sr_data, i32 0, i32 11
  %1 = ptrtoint ptr %nvalue_table1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %nvalue_table1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %arrayidx = getelementptr %struct.omap_volt_data, ptr %volt_data, i32 %count.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %tobool.not = icmp eq i32 %3, 0
  %inc = add i32 %count.0, 1
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0, i32 16) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %while.end.cleanup44_crit_edge, label %if.end7.i.i, !prof !55

while.end.cleanup44_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end7.i.i:                                      ; preds = %while.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #14
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.end7.i.i.cleanup44_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup44_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %cmp82.not = icmp eq i32 %count.0, 0
  br i1 %cmp82.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.086 = phi i32 [ %j.1, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.083 = phi i32 [ %inc41, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call.i = tail call i32 @omap_rev() #8
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  %sr_efuse_offs = getelementptr %struct.omap_volt_data, ptr %volt_data, i32 %i.083, i32 1
  %7 = ptrtoint ptr %sr_efuse_offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sr_efuse_offs, align 4
  %conv = trunc i32 %8 to i16
  br i1 %cmp.i.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call zeroext i8 @omap_ctrl_readb(i16 noundef zeroext %conv) #8
  %conv8 = zext i8 %call7 to i32
  %conv10 = add i16 %conv, 1
  %call11 = tail call zeroext i8 @omap_ctrl_readb(i16 noundef zeroext %conv10) #8
  %conv12 = zext i8 %call11 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %or = or i32 %shl, %conv8
  %conv15 = add i16 %conv, 2
  %call16 = tail call zeroext i8 @omap_ctrl_readb(i16 noundef zeroext %conv15) #8
  %conv17 = zext i8 %call16 to i32
  %shl18 = shl nuw nsw i32 %conv17, 16
  %or19 = or i32 %or, %shl18
  br label %if.end24

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext %conv) #8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then5
  %v.0 = phi i32 [ %or19, %if.then5 ], [ %call23, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v.0)
  %cmp25 = icmp eq i32 %v.0, 0
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29 = getelementptr %struct.omap_sr_nvalue_table, ptr %call8.i.i, i32 %j.086
  %nvalue = getelementptr %struct.omap_sr_nvalue_table, ptr %call8.i.i, i32 %j.086, i32 1
  %9 = ptrtoint ptr %nvalue to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %v.0, ptr %nvalue, align 4
  %arrayidx30 = getelementptr %struct.omap_volt_data, ptr %volt_data, i32 %i.083
  %sr_efuse_offs31 = getelementptr %struct.omap_volt_data, ptr %volt_data, i32 %i.083, i32 1
  %10 = ptrtoint ptr %sr_efuse_offs31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sr_efuse_offs31, align 4
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx29, align 16
  %sr_errminlimit = getelementptr %struct.omap_volt_data, ptr %volt_data, i32 %i.083, i32 2
  %13 = ptrtoint ptr %sr_errminlimit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sr_errminlimit, align 4
  %conv34 = zext i8 %14 to i32
  %errminlimit = getelementptr %struct.omap_sr_nvalue_table, ptr %call8.i.i, i32 %j.086, i32 2
  %15 = ptrtoint ptr %errminlimit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv34, ptr %errminlimit, align 8
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx30, align 4
  %volt_nominal39 = getelementptr %struct.omap_sr_nvalue_table, ptr %call8.i.i, i32 %j.086, i32 3
  %18 = ptrtoint ptr %volt_nominal39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %volt_nominal39, align 4
  %inc40 = add i32 %j.086, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge
  %j.1 = phi i32 [ %inc40, %if.end28 ], [ %j.086, %if.end24.cleanup_crit_edge ]
  %inc41 = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc41, %count.0
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %j.1, %cleanup.for.end_crit_edge ]
  %19 = ptrtoint ptr %nvalue_table1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %nvalue_table1, align 4
  %20 = ptrtoint ptr %nvalue_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %j.0.lcssa, ptr %nvalue_count, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %for.end, %if.end7.i.i.cleanup44_crit_edge, %while.end.cleanup44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @omap_ctrl_readb(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 214, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 222, i32 38}
!4 = distinct !{null, !5, !"sr_enable_on_init", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 29, i32 13}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 186, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 187, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 188, i32 2}
!12 = !{ptr @omap4_sr_instances, !13, !"omap4_sr_instances", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 185, i32 27}
!14 = !{ptr @dra7_sr_instances, !15, !"dra7_sr_instances", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 191, i32 27}
!16 = !{ptr @sr_init_by_name.i, !17, !"i", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 95, i32 13}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 97, i32 21}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 98, i32 21}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 100, i32 26}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 102, i32 26}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 106, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sr_init_by_name._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @sr_init_by_name._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 133, i32 3}
!34 = !{ptr @sr_init_by_name._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sr_init_by_name._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 140, i32 3}
!38 = !{ptr @sr_init_by_name._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sr_init_by_name._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/sr_device.c", i32 162, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sr_dev_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sr_dev_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{!"branch_weights", i32 1, i32 2000}
