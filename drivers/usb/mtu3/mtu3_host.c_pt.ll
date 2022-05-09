; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_host.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ssusb_mtk = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [4 x %struct.clk_bulk_data], %struct.otg_switch_mtk, i32, i8, i32, i32, i32, i32, ptr, i8, ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.otg_switch_mtk = type { ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, i32, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,syscon-wakeup\00", [41 x i8] zeroinitializer }, align 32
@ssusb_wakeup_of_property_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uwk - reg:0x%x, version:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ssusb_wakeup_of_property_parse\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/mtu3/mtu3_host.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssusb_wakeup_of_property_parse._entry_ptr = internal global ptr @ssusb_wakeup_of_property_parse._entry, section ".printk_index", align 4
@ssusb_host_init.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtu3\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssusb_host_init\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create child devices at %pOF\0A\00", [56 x i8] zeroinitializer }, align 32
@ssusb_host_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"xHCI platform device register success...\0A\00", [54 x i8] zeroinitializer }, align 32
@ssusb_host_init._entry_ptr = internal global ptr @ssusb_host_init._entry, section ".printk_index", align 4
@host_ports_num_get.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"host_ports_num_get\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"host - u2_ports:%d, u3_ports:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 101, i64 102]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 90, i32 44 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 95, i32 5 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 103, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 322, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 327, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [32 x i8] c"../drivers/usb/mtu3/mtu3_host.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 123, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @ssusb_host_init._entry, ptr @ssusb_host_init._entry_ptr, ptr @ssusb_wakeup_of_property_parse._entry, ptr @ssusb_wakeup_of_property_parse._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_wakeup_of_property_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_host_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_wakeup_of_property_parse(ptr nocapture noundef %ssusb, ptr noundef %dn) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #5
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = tail call ptr @of_find_property(ptr noundef %dn, ptr noundef nonnull @.str, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i, null
  %uwk_en = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 17
  %frombool = zext i1 %tobool.i to i8
  %1 = ptrtoint ptr %uwk_en to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %uwk_en, align 4
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i26 = call i32 @__of_parse_phandle_with_args(ptr noundef %dn, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool3.not = icmp eq i32 %call.i26, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %args6 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args6, align 4
  %uwk_reg_base = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 19
  %4 = ptrtoint ptr %uwk_reg_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %uwk_reg_base, align 4
  %arrayidx8 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx8, align 4
  %uwk_vers = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 20
  %7 = ptrtoint ptr %uwk_vers to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %uwk_vers, align 4
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 4
  %call9 = call ptr @syscon_node_to_regmap(ptr noundef %9) #5
  %uwk = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 18
  %10 = ptrtoint ptr %uwk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %uwk, align 4
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %12) #5
  %13 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ssusb, align 4
  %15 = ptrtoint ptr %uwk_reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uwk_reg_base, align 4
  %17 = ptrtoint ptr %uwk_vers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uwk_vers, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %16, i32 noundef %18) #8
  %19 = ptrtoint ptr %uwk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uwk, align 4
  %cmp.i.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %20 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %21, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i26, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_wakeup_set(ptr nocapture noundef readonly %ssusb, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uwk_en = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 17
  %0 = ptrtoint ptr %uwk_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uwk_en, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %uwk_vers.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 20
  %2 = ptrtoint ptr %uwk_vers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwk_vers.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.if.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 101, label %sw.bb1.i
    i32 102, label %sw.bb6.i
    i32 2, label %sw.bb11.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %uwk_reg_base.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 19
  %5 = ptrtoint ptr %uwk_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uwk_reg_base.i, align 4
  %add.i = add i32 %6, 4
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %uwk_reg_base2.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 19
  %7 = ptrtoint ptr %uwk_reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uwk_reg_base2.i, align 4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %uwk_reg_base7.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 19
  %9 = ptrtoint ptr %uwk_reg_base7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uwk_reg_base7.i, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %uwk_reg_base12.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 19
  %11 = ptrtoint ptr %uwk_reg_base12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uwk_reg_base12.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i
  %.sink.i = phi i32 [ 18, %sw.bb11.i ], [ 66, %sw.bb6.i ], [ 268435520, %sw.bb1.i ], [ 570425344, %sw.bb.i ]
  %reg.0.i = phi i32 [ %12, %sw.bb11.i ], [ %10, %sw.bb6.i ], [ %8, %sw.bb1.i ], [ %add.i, %sw.bb.i ]
  %msk.0.i = phi i32 [ 18, %sw.bb11.i ], [ 66, %sw.bb6.i ], [ -268431296, %sw.bb1.i ], [ 1040187456, %sw.bb.i ]
  %spec.select31.i = select i1 %enable, i32 %.sink.i, i32 0
  %uwk.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 18
  %13 = ptrtoint ptr %uwk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %uwk.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %reg.0.i, i32 noundef %msk.0.i, i32 noundef %spec.select31.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_host_resume(ptr nocapture noundef readonly %ssusb, i1 noundef zeroext %p0_skipped) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_base = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %0 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_base, align 4
  %u3p_dis_msk = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 15
  %2 = ptrtoint ptr %u3p_dis_msk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u3p_dis_msk, align 4
  %u2p_dis_msk = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 14
  %4 = ptrtoint ptr %u2p_dis_msk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u2p_dis_msk, align 4
  %u3_ports = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 13
  %6 = ptrtoint ptr %u3_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u3_ports, align 4
  %u2_ports = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 12
  %8 = ptrtoint ptr %u2_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %u2_ports, align 4
  br i1 %p0_skipped, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %5, 1
  %is_u3_drd = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 8
  %10 = ptrtoint ptr %is_u3_drd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_u3_drd, align 1, !range !34
  %12 = zext i8 %11 to i32
  %spec.select = or i32 %3, %12
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %u3p_skip_msk.0 = phi i32 [ %3, %entry.if.end4_crit_edge ], [ %spec.select, %if.then ]
  %u2p_skip_msk.0 = phi i32 [ %5, %entry.if.end4_crit_edge ], [ %or, %if.then ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %14 = and i32 %13, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #5, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp55 = icmp sgt i32 %7, 0
  br i1 %cmp55, label %if.end4.for.body_crit_edge, label %if.end4.for.cond11.preheader_crit_edge

if.end4.for.cond11.preheader_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond11.preheader

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.cond11.preheader:                             ; preds = %for.inc.for.cond11.preheader_crit_edge, %if.end4.for.cond11.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1258 = icmp sgt i32 %9, 0
  br i1 %cmp1258, label %for.cond11.preheader.for.body13_crit_edge, label %for.cond11.preheader.for.end27_crit_edge

for.cond11.preheader.for.end27_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end27

for.cond11.preheader.for.body13_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.056
  %and = and i32 %shl, %u3p_skip_msk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %i.056, 3
  %add = add i32 %mul, 48
  %add.ptr.i51 = getelementptr i8, ptr %1, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %16 = and i32 %15, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %16) #5, !srcloc !38
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.cond11.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.cond11.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond11.preheader

for.body13:                                       ; preds = %for.inc25.for.body13_crit_edge, %for.cond11.preheader.for.body13_crit_edge
  %i.159 = phi i32 [ %inc26, %for.inc25.for.body13_crit_edge ], [ 0, %for.cond11.preheader.for.body13_crit_edge ]
  %shl14 = shl nuw i32 1, %i.159
  %and15 = and i32 %shl14, %u2p_skip_msk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %for.body13.for.inc25_crit_edge

for.body13.for.inc25_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

if.end18:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  %mul19 = shl i32 %i.159, 3
  %add20 = add i32 %mul19, 80
  %add.ptr.i53 = getelementptr i8, ptr %1, i32 %add20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %18 = and i32 %17, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %18) #5, !srcloc !38
  br label %for.inc25

for.inc25:                                        ; preds = %if.end18, %for.body13.for.inc25_crit_edge
  %inc26 = add nuw nsw i32 %i.159, 1
  %exitcond61.not = icmp eq i32 %inc26, %9
  br i1 %exitcond61.not, label %for.inc25.for.end27_crit_edge, label %for.inc25.for.body13_crit_edge

for.inc25.for.body13_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end27

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %for.cond11.preheader.for.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_host_suspend(ptr nocapture noundef readonly %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_base = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %0 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_base, align 4
  %u3_ports = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 13
  %2 = ptrtoint ptr %u3_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u3_ports, align 4
  %u2_ports = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 12
  %4 = ptrtoint ptr %u2_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u2_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp44 = icmp sgt i32 %3, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.for.cond3.preheader_crit_edge

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond3.preheader

for.body.lr.ph:                                   ; preds = %entry
  %u3p_dis_msk = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 15
  br label %for.body

for.cond3.preheader:                              ; preds = %for.inc.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp447 = icmp sgt i32 %5, 0
  br i1 %cmp447, label %for.body5.lr.ph, label %for.cond3.preheader.for.end19_crit_edge

for.cond3.preheader.for.end19_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end19

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %u2p_dis_msk = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 14
  br label %for.body5

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.045
  %6 = ptrtoint ptr %u3p_dis_msk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u3p_dis_msk, align 4
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %i.045, 3
  %add = add i32 %mul, 48
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %9 = or i32 %8, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #5, !srcloc !38
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.cond3.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.cond3.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond3.preheader

for.body5:                                        ; preds = %for.inc17.for.body5_crit_edge, %for.body5.lr.ph
  %i.148 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc18, %for.inc17.for.body5_crit_edge ]
  %shl6 = shl nuw i32 1, %i.148
  %10 = ptrtoint ptr %u2p_dis_msk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %u2p_dis_msk, align 4
  %and7 = and i32 %11, %shl6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %for.body5.for.inc17_crit_edge

for.body5.for.inc17_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc17

if.end10:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #7
  %mul11 = shl i32 %i.148, 3
  %add12 = add i32 %mul11, 80
  %add.ptr.i41 = getelementptr i8, ptr %1, i32 %add12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %13 = or i32 %12, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %13) #5, !srcloc !38
  br label %for.inc17

for.inc17:                                        ; preds = %if.end10, %for.body5.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %i.148, 1
  %exitcond50.not = icmp eq i32 %inc18, %5
  br i1 %exitcond50.not, label %for.inc17.for.end19_crit_edge, label %for.inc17.for.body5_crit_edge

for.inc17.for.body5_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5

for.inc17.for.end19_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end19

for.end19:                                        ; preds = %for.inc17.for.end19_crit_edge, %for.cond3.preheader.for.end19_crit_edge
  %add.ptr.i43 = getelementptr i8, ptr %1, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %15 = or i32 %14, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %15) #5, !srcloc !38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_host_init(ptr noundef %ssusb, ptr noundef %parent_dn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssusb, align 4
  tail call fastcc void @ssusb_host_setup(ptr noundef %ssusb)
  %call = tail call i32 @of_platform_populate(ptr noundef %parent_dn, ptr noundef null, ptr noundef null, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_host_init.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_host_init, %cleanup)) #5
          to label %if.then6 [label %cleanup], !srcloc !43

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_host_init.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %parent_dn) #5
  br label %cleanup

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.then6, %do.body
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssusb_host_setup(ptr noundef %ssusb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_base.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %0 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !35
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %shr.i = lshr i32 %3, 8
  %and.i = and i32 %shr.i, 255
  %u2_ports.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 12
  %4 = ptrtoint ptr %u2_ports.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %u2_ports.i, align 4
  %and1.i = and i32 %3, 255
  %u3_ports.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 13
  %5 = ptrtoint ptr %u3_ports.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and1.i, ptr %u3_ports.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @host_ports_num_get.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_host_setup, %host_ports_num_get.exit)) #5
          to label %if.then.i [label %host_ports_num_get.exit], !srcloc !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ssusb, align 4
  %8 = ptrtoint ptr %u2_ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %u2_ports.i, align 4
  %10 = ptrtoint ptr %u3_ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %u3_ports.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @host_ports_num_get.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %9, i32 noundef %11) #5
  br label %host_ports_num_get.exit

host_ports_num_get.exit:                          ; preds = %if.then.i, %entry
  %12 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ippc_base.i, align 4
  %14 = ptrtoint ptr %u3_ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %u3_ports.i, align 4
  %16 = ptrtoint ptr %u2_ports.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %u2_ports.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %13, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 %19) #5, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.i = icmp sgt i32 %15, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %host_ports_num_get.exit.for.cond5.preheader.i_crit_edge

host_ports_num_get.exit.for.cond5.preheader.i_crit_edge: ; preds = %host_ports_num_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader.i

for.body.lr.ph.i:                                 ; preds = %host_ports_num_get.exit
  %u3p_dis_msk.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 15
  br label %for.body.i

for.cond5.preheader.i:                            ; preds = %for.inc.i.for.cond5.preheader.i_crit_edge, %host_ports_num_get.exit.for.cond5.preheader.i_crit_edge
  %u3_ports_disabled.0.lcssa.i = phi i32 [ 0, %host_ports_num_get.exit.for.cond5.preheader.i_crit_edge ], [ %u3_ports_disabled.1.i, %for.inc.i.for.cond5.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp69.i = icmp sgt i32 %17, 0
  br i1 %cmp69.i, label %for.body7.lr.ph.i, label %for.cond5.preheader.i.ssusb_host_enable.exit_crit_edge

for.cond5.preheader.i.ssusb_host_enable.exit_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_host_enable.exit

for.body7.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %u2p_dis_msk.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 14
  br label %for.body7.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc4.i, %for.inc.i.for.body.i_crit_edge ]
  %u3_ports_disabled.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %u3_ports_disabled.1.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.07.i
  %20 = ptrtoint ptr %u3p_dis_msk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %u3p_dis_msk.i, align 4
  %and.i9 = and i32 %21, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i10

if.then.i10:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add i32 %u3_ports_disabled.06.i, 1
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = shl i32 %i.07.i, 3
  %add.i = add i32 %mul.i, 48
  %add.ptr.i1.i = getelementptr i8, ptr %13, i32 %add.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %23 = and i32 %22, -117440513
  %24 = or i32 %23, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %24) #5, !srcloc !38
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.then.i10
  %u3_ports_disabled.1.i = phi i32 [ %inc.i, %if.then.i10 ], [ %u3_ports_disabled.06.i, %if.end.i ]
  %inc4.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.for.cond5.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.cond5.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader.i

for.body7.i:                                      ; preds = %for.inc20.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.110.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc21.i, %for.inc20.i.for.body7.i_crit_edge ]
  %shl8.i = shl nuw i32 1, %i.110.i
  %25 = ptrtoint ptr %u2p_dis_msk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %u2p_dis_msk.i, align 4
  %and9.i = and i32 %26, %shl8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.body7.i.for.inc20.i_crit_edge

for.body7.i.for.inc20.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20.i

if.end12.i:                                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul13.i = shl i32 %i.110.i, 3
  %add14.i = add i32 %mul13.i, 80
  %add.ptr.i3.i = getelementptr i8, ptr %13, i32 %add14.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %28 = and i32 %27, -117571585
  %29 = or i32 %28, 67239936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %29) #5, !srcloc !38
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %if.end12.i, %for.body7.i.for.inc20.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.110.i, 1
  %exitcond12.not.i = icmp eq i32 %inc21.i, %17
  br i1 %exitcond12.not.i, label %for.inc20.i.ssusb_host_enable.exit_crit_edge, label %for.inc20.i.for.body7.i_crit_edge

for.inc20.i.for.body7.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.i

for.inc20.i.ssusb_host_enable.exit_crit_edge:     ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_host_enable.exit

ssusb_host_enable.exit:                           ; preds = %for.inc20.i.ssusb_host_enable.exit_crit_edge, %for.cond5.preheader.i.ssusb_host_enable.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %u3_ports_disabled.0.lcssa.i)
  %cmp23.i = icmp sgt i32 %15, %u3_ports_disabled.0.lcssa.i
  %spec.store.select.i = select i1 %cmp23.i, i32 65536, i32 2048
  %call26.i = tail call i32 @ssusb_check_clocks(ptr noundef %ssusb, i32 noundef %spec.store.select.i) #5
  tail call void @ssusb_set_force_mode(ptr noundef %ssusb, i32 noundef 1) #5
  %otg_switch = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9
  %call1 = tail call i32 @ssusb_set_vbus(ptr noundef %otg_switch, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_host_exit(ptr noundef %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssusb, align 4
  tail call void @of_platform_depopulate(ptr noundef %1) #5
  %is_host.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 11
  %2 = ptrtoint ptr %is_host.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_host.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %otg_switch.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9
  %call.i = tail call i32 @ssusb_set_vbus(ptr noundef %otg_switch.i, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %ippc_base.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %4 = ptrtoint ptr %ippc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ippc_base.i.i, align 4
  %u3_ports.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 13
  %6 = ptrtoint ptr %u3_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u3_ports.i.i, align 4
  %u2_ports.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 12
  %8 = ptrtoint ptr %u2_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %u2_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.i.i = icmp sgt i32 %7, 0
  br i1 %cmp5.i.i, label %for.body.lr.ph.i.i, label %if.end.i.for.cond3.preheader.i.i_crit_edge

if.end.i.for.cond3.preheader.i.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond3.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %u3p_dis_msk.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 15
  br label %for.body.i.i

for.cond3.preheader.i.i:                          ; preds = %for.inc.i.i.for.cond3.preheader.i.i_crit_edge, %if.end.i.for.cond3.preheader.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp48.i.i = icmp sgt i32 %9, 0
  br i1 %cmp48.i.i, label %for.body5.lr.ph.i.i, label %for.cond3.preheader.i.i.ssusb_host_cleanup.exit_crit_edge

for.cond3.preheader.i.i.ssusb_host_cleanup.exit_crit_edge: ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_host_cleanup.exit

for.body5.lr.ph.i.i:                              ; preds = %for.cond3.preheader.i.i
  %u2p_dis_msk.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 14
  br label %for.body5.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.06.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.06.i.i
  %10 = ptrtoint ptr %u3p_dis_msk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %u3p_dis_msk.i.i, align 4
  %and.i.i = and i32 %11, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i.i = shl i32 %i.06.i.i, 3
  %add.i.i = add i32 %mul.i.i, 48
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %add.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %13 = or i32 %12, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #5, !srcloc !38
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.cond3.preheader.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.for.cond3.preheader.i.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond3.preheader.i.i

for.body5.i.i:                                    ; preds = %for.inc17.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %i.19.i.i = phi i32 [ 0, %for.body5.lr.ph.i.i ], [ %inc18.i.i, %for.inc17.i.i.for.body5.i.i_crit_edge ]
  %shl6.i.i = shl nuw i32 1, %i.19.i.i
  %14 = ptrtoint ptr %u2p_dis_msk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %u2p_dis_msk.i.i, align 4
  %and7.i.i = and i32 %15, %shl6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %for.body5.i.i.for.inc17.i.i_crit_edge

for.body5.i.i.for.inc17.i.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc17.i.i

if.end10.i.i:                                     ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul11.i.i = shl i32 %i.19.i.i, 3
  %add12.i.i = add i32 %mul11.i.i, 80
  %add.ptr.i2.i.i = getelementptr i8, ptr %5, i32 %add12.i.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %17 = or i32 %16, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %17) #5, !srcloc !38
  br label %for.inc17.i.i

for.inc17.i.i:                                    ; preds = %if.end10.i.i, %for.body5.i.i.for.inc17.i.i_crit_edge
  %inc18.i.i = add nuw nsw i32 %i.19.i.i, 1
  %exitcond11.not.i.i = icmp eq i32 %inc18.i.i, %9
  br i1 %exitcond11.not.i.i, label %for.inc17.i.i.ssusb_host_cleanup.exit_crit_edge, label %for.inc17.i.i.for.body5.i.i_crit_edge

for.inc17.i.i.for.body5.i.i_crit_edge:            ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i.i

for.inc17.i.i.ssusb_host_cleanup.exit_crit_edge:  ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_host_cleanup.exit

ssusb_host_cleanup.exit:                          ; preds = %for.inc17.i.i.ssusb_host_cleanup.exit_crit_edge, %for.cond3.preheader.i.i.ssusb_host_cleanup.exit_crit_edge
  %add.ptr.i4.i.i = getelementptr i8, ptr %5, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %19 = or i32 %18, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %19) #5, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_set_force_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_set_vbus(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/mtu3_host.c", i32 90, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/mtu3/mtu3_host.c", i32 95, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/mtu3/mtu3_host.c", i32 103, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ssusb_wakeup_of_property_parse._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @ssusb_wakeup_of_property_parse._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/mtu3/mtu3_host.c", i32 322, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ssusb_host_init.__UNIQUE_ID_ddebug295, !13, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/mtu3/mtu3_host.c", i32 327, i32 2}
!19 = !{ptr @ssusb_host_init._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ssusb_host_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/mtu3/mtu3_host.c", i32 123, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @host_ports_num_get.__UNIQUE_ID_ddebug294, !22, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i8 0, i8 2}
!35 = !{i64 3667639}
!36 = !{i64 2155464224}
!37 = !{i64 2155464437}
!38 = !{i64 3667221}
!39 = !{i64 2155462611}
!40 = !{i64 2155461798}
!41 = !{i64 2155463214}
!42 = !{i64 2155463426}
!43 = !{i64 2148728365, i64 2148728370, i64 2148728383, i64 2148728427, i64 2148728461, i64 2148728482}
