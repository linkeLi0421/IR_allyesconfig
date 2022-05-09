; ModuleID = '/llk/IR_all_yes/drivers/clk/keystone/gate.c_pt.bc'
source_filename = "../drivers/clk/keystone/gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_psc_data = type { ptr, ptr, i32 }
%struct.clk_psc = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_keystone_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,psc-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_keystone_psc_clk_init }, section "__clk_of_table", align 4
@__UNIQUE_ID_file181 = internal constant [36 x i8] c"gate.file=drivers/clk/keystone/gate\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [17 x i8] c"gate.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description183 = internal constant [59 x i8] c"gate.description=Clock driver for Keystone 2 based devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author184 = internal constant [51 x i8] c"gate.author=Murali Karicheri <m-karicheri2@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [57 x i8] c"gate.author=Santosh Shilimkar <santosh.shilimkar@ti.com>\00", section ".modinfo", align 1
@psc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: Out of memory\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"of_psc_clk_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/keystone/gate.c\00", [36 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry_ptr = internal global ptr @of_psc_clk_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: control ioremap failed\0A\00", [34 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry_ptr.7 = internal global ptr @of_psc_clk_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"domain\00", [25 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: domain ioremap failed\0A\00", [35 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry_ptr.11 = internal global ptr @of_psc_clk_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"domain-id\00", [22 x i8] zeroinitializer }, align 32
@domain_transition_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Parent clock not found\0A\00", [34 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry_ptr.16 = internal global ptr @of_psc_clk_init._entry.14, section ".printk_index", align 4
@of_psc_clk_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: error registering clk %pOFn\0A\00", [61 x i8] zeroinitializer }, align 32
@of_psc_clk_init._entry_ptr.19 = internal global ptr @of_psc_clk_init._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_psc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @keystone_clk_enable, ptr @keystone_clk_disable, ptr @keystone_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"psc_lock\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"psc_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 207, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 211, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 211, i32 50 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 214, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 218, i32 50 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 221, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 225, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"domain_transition_base\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 41, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 231, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 234, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 244, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"clk_psc_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 147, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [31 x i8] c"../drivers/clk/keystone/gate.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 67, i32 8 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description183, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_license182, ptr @__of_table_keystone_gate_clk, ptr @of_psc_clk_init._entry, ptr @of_psc_clk_init._entry.14, ptr @of_psc_clk_init._entry.17, ptr @of_psc_clk_init._entry.5, ptr @of_psc_clk_init._entry.9, ptr @of_psc_clk_init._entry_ptr, ptr @of_psc_clk_init._entry_ptr.11, ptr @of_psc_clk_init._entry_ptr.16, ptr @of_psc_clk_init._entry_ptr.19, ptr @of_psc_clk_init._entry_ptr.7, ptr @psc_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @domain_transition_base, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @clk_psc_ops, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_psc_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_psc_clk_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_psc_clk_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domain_transition_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_psc_clk_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_psc_clk_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_psc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_keystone_psc_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_psc_clk_init(ptr noundef %node) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @of_psc_clk_init(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_property_match_string(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7
  %call3 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef %call2) #7
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call7.i.i, align 8
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #12
  br label %out

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @of_property_match_string(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #7
  %call14 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef %call13) #7
  %domain_base = getelementptr inbounds %struct.clk_psc_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %domain_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %domain_base, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #12
  br label %unmap_ctrl

if.end23:                                         ; preds = %if.end12
  %domain_id = getelementptr inbounds %struct.clk_psc_data, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.12, ptr noundef %domain_id, i32 noundef 1, i32 noundef 0) #7
  %6 = load ptr, ptr @domain_transition_base, align 4
  %tobool25.not = icmp eq ptr %6, null
  br i1 %tobool25.not, label %land.lhs.true, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end23
  %7 = ptrtoint ptr %domain_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %domain_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool27.not = icmp eq i32 %8, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %domain_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain_base, align 4
  store ptr %10, ptr @domain_transition_base, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %call31 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.13, ptr noundef nonnull %clk_name) #7
  %call32 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #7
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1) #12
  br label %unmap_domain

if.end40:                                         ; preds = %if.end30
  %11 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %13 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #7
  %14 = getelementptr inbounds i8, ptr %init.i, i32 12
  %15 = call ptr @memset(ptr %14, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %clk_register_psc.exit.thread, label %if.end.i

clk_register_psc.exit.thread:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %do.end48

if.end.i:                                         ; preds = %if.end40
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @clk_psc_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags.i, align 4
  %20 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  %parent_name.addr..i = select i1 %tobool3.not.i, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %22 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %21, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %23 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %psc_data6.i = getelementptr inbounds %struct.clk_psc, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %psc_data6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %psc_data6.i, align 4
  %lock7.i = getelementptr inbounds %struct.clk_psc, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %lock7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @psc_lock, ptr %lock7.i, align 8
  %init8.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %init8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %init.i, ptr %init8.i, align 8
  %call10.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #7
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %clk_register_psc.exit.thread3, label %if.then43

clk_register_psc.exit.thread3:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %do.end48

if.then43:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %call44 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call10.i) #7
  br label %cleanup

do.end48:                                         ; preds = %clk_register_psc.exit.thread3, %clk_register_psc.exit.thread
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, ptr noundef %node) #12
  br label %unmap_domain

unmap_domain:                                     ; preds = %do.end48, %do.end37
  %27 = ptrtoint ptr %domain_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %domain_base, align 4
  call void @iounmap(ptr noundef %28) #7
  br label %unmap_ctrl

unmap_ctrl:                                       ; preds = %unmap_domain, %do.end20
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  call void @iounmap(ptr noundef %30) #7
  br label %out

out:                                              ; preds = %unmap_ctrl, %do.end9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then43, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_clk_enable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %psc_data = getelementptr inbounds %struct.clk_psc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %psc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psc_data, align 4
  %lock = getelementptr inbounds %struct.clk_psc, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %domain_base = getelementptr inbounds %struct.clk_psc_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %domain_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain_base, align 4
  %domain_id = getelementptr inbounds %struct.clk_psc_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %domain_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %domain_id, align 4
  tail call fastcc void @psc_config(ptr noundef %5, ptr noundef %7, i32 noundef 3, i32 noundef %9)
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %flags.0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keystone_clk_disable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %psc_data = getelementptr inbounds %struct.clk_psc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %psc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psc_data, align 4
  %lock = getelementptr inbounds %struct.clk_psc, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %domain_base = getelementptr inbounds %struct.clk_psc_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %domain_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain_base, align 4
  %domain_id = getelementptr inbounds %struct.clk_psc_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %domain_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %domain_id, align 4
  tail call fastcc void @psc_config(ptr noundef %5, ptr noundef %7, i32 noundef 2, i32 noundef %9)
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %flags.0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_clk_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %psc_data = getelementptr inbounds %struct.clk_psc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %psc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psc_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 2048
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %5 = lshr i32 %4, 20
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psc_config(ptr noundef %control_base, ptr noundef %domain_base, i32 noundef %next_state, i32 noundef %domain_id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %control_base, i32 2560
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %1 = and i32 %0, -1056964609
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %or = or i32 %2, %next_state
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %next_state)
  %cmp = icmp eq i32 %next_state, 2
  %and2 = and i32 %or, -257
  %spec.select = select i1 %cmp, i32 %and2, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !63
  %add.ptr6 = getelementptr i8, ptr %domain_base, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %5 = and i32 %4, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then11, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr14 = getelementptr i8, ptr %domain_base, i32 768
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %7) #7, !srcloc !63
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %entry.if.end23_crit_edge
  %shl = shl nuw i32 1, %domain_id
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %9 = load ptr, ptr @domain_transition_base, align 4
  %add.ptr27 = getelementptr i8, ptr %9, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %8) #7, !srcloc !63
  br label %do.body28

do.body28:                                        ; preds = %do.body28.do.body28_crit_edge, %if.end23
  %count.0 = phi i32 [ 65535, %if.end23 ], [ %dec, %do.body28.do.body28_crit_edge ]
  %10 = load ptr, ptr @domain_transition_base, align 4
  %add.ptr31 = getelementptr i8, ptr %10, i32 296
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !59
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %13 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool37.not = icmp eq i32 %13, 0
  %dec = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool38.not = icmp eq i32 %count.0, 0
  %or.cond = select i1 %tobool37.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %do.body40.preheader, label %do.body28.do.body28_crit_edge

do.body28.do.body28_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

do.body40.preheader:                              ; preds = %do.body28
  %add.ptr43 = getelementptr i8, ptr %control_base, i32 2048
  br label %do.body40

do.body40:                                        ; preds = %do.body40.do.body40_crit_edge, %do.body40.preheader
  %count.1 = phi i32 [ %dec51, %do.body40.do.body40_crit_edge ], [ 65535, %do.body40.preheader ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #7, !srcloc !59
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %and48 = and i32 %15, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and48, i32 %next_state)
  %cmp49 = icmp eq i32 %and48, %next_state
  %dec51 = add nsw i32 %count.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool52.not = icmp eq i32 %count.1, 0
  %or.cond67 = select i1 %cmp49, i1 true, i1 %tobool52.not
  br i1 %or.cond67, label %do.end54, label %do.body40.do.body40_crit_edge

do.body40.do.body40_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

do.end54:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !24, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__of_table_keystone_gate_clk, !1, !"__of_table_keystone_gate_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/keystone/gate.c", i32 263, i32 1}
!2 = !{ptr @__UNIQUE_ID_file181, !3, !"__UNIQUE_ID_file181", i1 false, i1 false}
!3 = !{!"../drivers/clk/keystone/gate.c", i32 266, i32 1}
!4 = !{ptr @__UNIQUE_ID_license182, !3, !"__UNIQUE_ID_license182", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description183, !6, !"__UNIQUE_ID_description183", i1 false, i1 false}
!6 = !{!"../drivers/clk/keystone/gate.c", i32 267, i32 1}
!7 = !{ptr @__UNIQUE_ID_author184, !8, !"__UNIQUE_ID_author184", i1 false, i1 false}
!8 = !{!"../drivers/clk/keystone/gate.c", i32 268, i32 1}
!9 = !{ptr @__UNIQUE_ID_author185, !10, !"__UNIQUE_ID_author185", i1 false, i1 false}
!10 = !{!"../drivers/clk/keystone/gate.c", i32 269, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/keystone/gate.c", i32 207, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @of_psc_clk_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @of_psc_clk_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/keystone/gate.c", i32 211, i32 37}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/keystone/gate.c", i32 211, i32 50}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/keystone/gate.c", i32 214, i32 3}
!23 = !{ptr @of_psc_clk_init._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @of_psc_clk_init._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/keystone/gate.c", i32 218, i32 50}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/keystone/gate.c", i32 221, i32 3}
!29 = !{ptr @of_psc_clk_init._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @of_psc_clk_init._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/keystone/gate.c", i32 225, i32 29}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/keystone/gate.c", i32 231, i32 32}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/keystone/gate.c", i32 234, i32 3}
!37 = !{ptr @of_psc_clk_init._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @of_psc_clk_init._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/keystone/gate.c", i32 244, i32 2}
!41 = !{ptr @of_psc_clk_init._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @of_psc_clk_init._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @domain_transition_base, !44, !"domain_transition_base", i1 false, i1 false}
!44 = !{!"../drivers/clk/keystone/gate.c", i32 41, i32 22}
!45 = !{ptr @clk_psc_ops, !46, !"clk_psc_ops", i1 false, i1 false}
!46 = !{!"../drivers/clk/keystone/gate.c", i32 147, i32 29}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/keystone/gate.c", i32 67, i32 8}
!49 = !{ptr @psc_lock, !48, !"psc_lock", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 4031872}
!60 = !{i64 2152693110}
!61 = !{i64 2152687968}
!62 = !{i64 2152688282}
!63 = !{i64 4031454}
!64 = !{i64 2152688966}
!65 = !{i64 2152689471}
!66 = !{i64 2152689777}
!67 = !{i64 2152690195}
!68 = !{i64 2152690933}
!69 = !{i64 2152691444}
