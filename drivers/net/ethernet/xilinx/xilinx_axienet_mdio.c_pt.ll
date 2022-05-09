; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.axienet_local = type { ptr, ptr, ptr, ptr, %struct.phylink_config, ptr, i8, ptr, [3 x %struct.clk_bulk_data], ptr, i8, i32, ptr, ptr, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not find CPU device node.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CPU clock-frequency property not found.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Setting assumed host clock to %u\0A\00", [62 x i8] zeroinitializer }, align 32
@axienet_mdio_enable.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xilinx_emac\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axienet_mdio_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Setting MDIO clock divisor to %u/%u Hz host clock.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axienet-%.8llx\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Xilinx Axi Ethernet MDIO\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@axienet_mdio_read.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.7, ptr @.str.13, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axienet_mdio_read\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"axienet_mdio_read(phy_id=%i, reg=%x) == %x\0A\00", [52 x i8] zeroinitializer }, align 32
@axienet_mdio_write.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.7, ptr @.str.15, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axienet_mdio_write\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"axienet_mdio_write(phy_id=%i, reg=%x, val=%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 170, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 172, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 175, i32 40 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 178, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 183, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 220, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 264, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 268, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 274, i32 53 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 92, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [53 x i8] c"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 118, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axienet_mdio_enable(ptr nocapture noundef %lp) local_unnamed_addr #0 align 64 {
entry:
  %host_clock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host_clock) #6
  %0 = ptrtoint ptr %host_clock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %host_clock, align 4, !annotation !39
  %mii_clk_div = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 10
  %1 = ptrtoint ptr %mii_clk_div to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %mii_clk_div, align 4
  %axi_clk = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 7
  %2 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi_clk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_get_rate(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %host_clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %host_clock, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.1) #9
  %7 = ptrtoint ptr %host_clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 150000000, ptr %host_clock, align 4
  br label %if.end10

if.else5:                                         ; preds = %if.else
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2, ptr noundef nonnull @.str.2, ptr noundef nonnull %host_clock, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool7.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool7.not, label %if.else5.if.end_crit_edge, label %if.then8

if.else5.if.end_crit_edge:                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then8:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.3) #9
  %10 = ptrtoint ptr %host_clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 150000000, ptr %host_clock, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else5.if.end_crit_edge
  call void @of_node_put(ptr noundef nonnull %call2) #6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then4
  %11 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lp, align 4
  %13 = ptrtoint ptr %host_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_clock, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %12, ptr noundef nonnull @.str.4, i32 noundef %14) #9
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.then
  %15 = ptrtoint ptr %host_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_clock, align 4
  %.frozen = freeze i32 %16
  %div = udiv i32 %.frozen, 5000000
  %17 = trunc i32 %div to i8
  %18 = mul i32 %div, 5000000
  %rem.decomposed = sub i32 %.frozen, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool14.not = icmp eq i32 %rem.decomposed, 0
  %conv = sext i1 %tobool14.not to i8
  %spec.select = add i8 %conv, %17
  %19 = ptrtoint ptr %mii_clk_div to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %mii_clk_div, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axienet_mdio_enable.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axienet_mdio_enable, %if.then23)) #6
          to label %do.end29 [label %if.then23], !srcloc !40

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lp, align 4
  %22 = ptrtoint ptr %mii_clk_div to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mii_clk_div, align 4
  %conv26 = zext i8 %23 to i32
  %24 = ptrtoint ptr %host_clock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_clock, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @axienet_mdio_enable.__UNIQUE_ID_ddebug353, ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %conv26, i32 noundef %25) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %if.end12
  %26 = ptrtoint ptr %mii_clk_div to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mii_clk_div, align 4
  %28 = or i8 %27, 64
  %or = zext i8 %28 to i32
  %regs.i = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 12
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 1280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @arm_heavy_mb() #6
  %31 = shl nuw i32 %or, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #6, !srcloc !42
  %call32 = call fastcc i32 @axienet_mdio_wait_until_ready(ptr noundef %lp)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host_clock) #6
  ret i32 %call32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axienet_mdio_wait_until_ready(ptr nocapture noundef readonly %lp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 30) #6
  %regs.i.i = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 12
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %1, i32 1284
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not35 = icmp sgt i32 %2, -1
  br i1 %tobool.not35, label %entry.land.lhs.true_crit_edge, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then19.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 1284
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %if.then19.land.lhs.true_crit_edge, label %if.then19.for.end.thread_crit_edge

if.then19.for.end.thread_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

if.then19.land.lhs.true_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %7, i32 1284
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool22.not.inv = icmp slt i32 %8, 0
  %spec.select = select i1 %tobool22.not.inv, i32 0, i32 -110
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.then19.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %9 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.then19.for.end.thread_crit_edge ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @axienet_mdio_disable(ptr nocapture noundef readonly %lp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 12
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axienet_mdio_setup(ptr noundef %lp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @axienet_mdio_enable(ptr noundef %lp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %regs_start = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 11
  %0 = ptrtoint ptr %regs_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regs_start, align 4
  %conv = zext i32 %1 to i64
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.9, i64 noundef %conv)
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lp, ptr %priv, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @axienet_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @axienet_mdio_write, ptr %write, align 8
  %dev = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %parent, align 4
  %mii_bus = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 9
  %9 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %mii_bus, align 4
  %10 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call6 = tail call ptr @of_get_child_by_name(ptr noundef %12, ptr noundef nonnull @.str.11) #6
  %call7 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i, ptr noundef %call6) #6
  tail call void @of_node_put(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mdiobus_free(ptr noundef nonnull %call.i) #6
  %13 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mii_bus, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i.i = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 12
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 1280
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %17 = and i32 %16, -1073741825
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %19, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %17) #6, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mii_clk_div.i = getelementptr inbounds %struct.axienet_local, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mii_clk_div.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mii_clk_div.i, align 4
  %4 = or i8 %3, 64
  %or.i = zext i8 %4 to i32
  %regs.i.i = getelementptr inbounds %struct.axienet_local, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %7 = shl nuw i32 %or.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #6, !srcloc !42
  %call = tail call fastcc i32 @axienet_mdio_wait_until_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %9, i32 1280
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %11 = and i32 %10, -1073741825
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %13, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %11) #6, !srcloc !42
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %phy_id, 24
  %and = and i32 %shl, 520093696
  %shl1 = shl i32 %reg, 16
  %and2 = and i32 %shl1, 2031616
  %or = or i32 %and, %and2
  %or4 = or i32 %or, 34816
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 1284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or4) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !42
  %call5 = tail call fastcc i32 @axienet_mdio_wait_until_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i35 = getelementptr i8, ptr %18, i32 1280
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %20 = and i32 %19, -1073741825
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i36 = getelementptr i8, ptr %22, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i36, i32 %20) #6, !srcloc !42
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %add.ptr.i38 = getelementptr i8, ptr %18, i32 1292
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %24 = and i32 %23, -65536
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axienet_mdio_read.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axienet_mdio_read, %if.then14)) #6
          to label %do.end [label %if.then14], !srcloc !40

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.axienet_local, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axienet_mdio_read.__UNIQUE_ID_ddebug351, ptr noundef %27, ptr noundef nonnull @.str.13, i32 noundef %phy_id, i32 noundef %reg, i32 noundef %25) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end8
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %29, i32 1280
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %31 = and i32 %30, -1073741825
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i41 = getelementptr i8, ptr %33, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i41, i32 %31) #6, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then7, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then7 ], [ %25, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axienet_mdio_write.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axienet_mdio_write, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.axienet_local, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i16 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axienet_mdio_write.__UNIQUE_ID_ddebug352, ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %phy_id, i32 noundef %reg, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mii_clk_div.i = getelementptr inbounds %struct.axienet_local, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %mii_clk_div.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mii_clk_div.i, align 4
  %6 = or i8 %5, 64
  %or.i = zext i8 %6 to i32
  %regs.i.i = getelementptr inbounds %struct.axienet_local, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %9 = shl nuw i32 %or.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #6, !srcloc !42
  %call3 = tail call fastcc i32 @axienet_mdio_wait_until_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %11, i32 1280
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %13 = and i32 %12, -1073741825
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %15, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %13) #6, !srcloc !42
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv7 = zext i16 %val to i32
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #6, !srcloc !42
  %shl = shl i32 %phy_id, 24
  %and = and i32 %shl, 520093696
  %shl8 = shl i32 %reg, 16
  %and9 = and i32 %shl8, 2031616
  %or = or i32 %and, %and9
  %or11 = or i32 %or, 18432
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %20, i32 1284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or11) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %21) #6, !srcloc !42
  %call12 = tail call fastcc i32 @axienet_mdio_wait_until_ready(ptr noundef %1)
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %23, i32 1280
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %25 = and i32 %24, -1073741825
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i38 = getelementptr i8, ptr %27, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i38, i32 %25) #6
  %28 = call i32 @llvm.smin.i32(i32 %call12, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %28, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @axienet_mdio_teardown(ptr nocapture noundef %lp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_bus = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 9
  %0 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mii_bus, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #6
  %2 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus, align 4
  tail call void @mdiobus_free(ptr noundef %3) #6
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mii_bus, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 170, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 172, i32 26}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 175, i32 40}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 178, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 183, i32 25}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 220, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @axienet_mdio_enable.__UNIQUE_ID_ddebug353, !11, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 264, i32 37}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 268, i32 14}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 274, i32 53}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 92, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @axienet_mdio_read.__UNIQUE_ID_ddebug351, !23, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c", i32 118, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @axienet_mdio_write.__UNIQUE_ID_ddebug352, !27, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{i64 2148727811, i64 2148727816, i64 2148727829, i64 2148727873, i64 2148727907, i64 2148727928}
!41 = !{i64 2151562296}
!42 = !{i64 4027664}
!43 = !{i64 4028082}
!44 = !{i64 2151560941}
