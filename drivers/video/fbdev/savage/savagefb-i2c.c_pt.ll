; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/savage/savagefb-i2c.c_pt.bc'
source_filename = "../drivers/video/fbdev/savage/savagefb-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.savagefb_par = type { ptr, i32, %struct.savagefb_i2c_chan, %struct.savage_reg, %struct.savage_reg, %struct.savage_reg, %struct.vgastate, %struct.mutex, ptr, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, %struct.anon.86, %struct.anon.87, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, [256 x %struct.anon.88], i32, i32 }
%struct.savagefb_i2c_chan = type { ptr, %struct.i2c_adapter, %struct.i2c_algo_bit_data, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.savage_reg = type { i8, [25 x i8], [5 x i8], [9 x i8], [21 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [22 x i32], i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.86 = type { ptr, i32, i32, i32 }
%struct.anon.87 = type { ptr, i32, i32 }
%struct.anon.88 = type { i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAVAGE DDC2\00", [20 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file306 = internal constant [50 x i8] c"savagefb.file=drivers/video/fbdev/savage/savagefb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [21 x i8] c"savagefb.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@savage_setup_i2c_bus.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"savagefb\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"savage_setup_i2c_bus\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/video/fbdev/savage/savagefb-i2c.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I2C bus %s registered.\0A\00", [40 x i8] zeroinitializer }, align 32
@savage_setup_i2c_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 161, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register I2C bus %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@savage_setup_i2c_bus._entry_ptr = internal global ptr @savage_setup_i2c_bus._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 8]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 205, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 157, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [45 x i8] c"../drivers/video/fbdev/savage/savagefb-i2c.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 160, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @savage_setup_i2c_bus._entry, ptr @savage_setup_i2c_bus._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_setup_i2c_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savagefb_create_i2c_busses(ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %chan = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %chan, align 8
  %chip = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.default [
    i32 4, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge86
    i32 5, label %entry.sw.bb_crit_edge87
    i32 3, label %sw.bb12
    i32 8, label %sw.bb35
  ]

entry.sw.bb_crit_edge87:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge86:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge86, %entry.sw.bb_crit_edge87
  %reg = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 177, ptr %reg, align 4
  %mmio = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %ioaddr = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ioaddr, align 8
  %setsda = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 1
  %10 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @prosavage_gpio_setsda, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 2
  %11 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @prosavage_gpio_setscl, ptr %setscl, align 8
  %getsda = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 3
  %12 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @prosavage_gpio_getsda, ptr %getsda, align 4
  %getscl = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 4
  %13 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @prosavage_gpio_getscl, ptr %getscl, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %reg14 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %reg14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 160, ptr %reg14, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp = icmp ugt i8 %18, 1
  br i1 %cmp, label %land.lhs.true, label %sw.bb12.if.end_crit_edge

sw.bb12.if.end_crit_edge:                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %mmio.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 -90) #4, !srcloc !27
  %21 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %22, i32 33749
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %24 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %reg14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 177, ptr %reg14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.bb12.if.end_crit_edge
  %mmio19 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %26 = ptrtoint ptr %mmio19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio19, align 4
  %ioaddr22 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %ioaddr22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %ioaddr22, align 8
  %setsda25 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 1
  %29 = ptrtoint ptr %setsda25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @prosavage_gpio_setsda, ptr %setsda25, align 4
  %setscl28 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 2
  %30 = ptrtoint ptr %setscl28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @prosavage_gpio_setscl, ptr %setscl28, align 8
  %getsda31 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 3
  %31 = ptrtoint ptr %getsda31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @prosavage_gpio_getsda, ptr %getsda31, align 4
  %getscl34 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 4
  %32 = ptrtoint ptr %getscl34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @prosavage_gpio_getscl, ptr %getscl34, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %reg37 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %reg37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65312, ptr %reg37, align 4
  %mmio38 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %34 = ptrtoint ptr %mmio38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio38, align 4
  %ioaddr41 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %ioaddr41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %ioaddr41, align 8
  %setsda44 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 1
  %37 = ptrtoint ptr %setsda44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @savage4_gpio_setsda, ptr %setsda44, align 4
  %setscl47 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 2
  %38 = ptrtoint ptr %setscl47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @savage4_gpio_setscl, ptr %setscl47, align 8
  %getsda50 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 3
  %39 = ptrtoint ptr %getsda50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @savage4_gpio_getsda, ptr %getsda50, align 4
  %getscl53 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 2, i32 4
  %40 = ptrtoint ptr %getscl53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @savage4_gpio_getscl, ptr %getscl53, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %chan, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %if.end, %sw.bb
  tail call fastcc void @savage_setup_i2c_bus(ptr noundef %chan)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prosavage_gpio_setsda(ptr nocapture noundef readonly %data, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %mmio.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv) #4, !srcloc !27
  %6 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %7, i32 33749
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %or2 = or i8 %8, 18
  %9 = and i8 %8, -19
  %and = or i8 %9, 16
  %r.0 = select i1 %tobool.not, i8 %and, i8 %or2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %conv4 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %mmio.i.i.i13 = getelementptr inbounds %struct.savagefb_par, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %mmio.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i.i13, align 4
  %add.ptr.i.i.i14 = getelementptr i8, ptr %15, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i14, i8 %conv4) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %mmio.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i.i13, align 4
  %add.ptr.i.i3.i15 = getelementptr i8, ptr %17, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i15, i8 %r.0) #4, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prosavage_gpio_setscl(ptr nocapture noundef readonly %data, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %mmio.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv) #4, !srcloc !27
  %6 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %7, i32 33749
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %or2 = or i8 %8, 17
  %9 = and i8 %8, -18
  %and = or i8 %9, 16
  %r.0 = select i1 %tobool.not, i8 %and, i8 %or2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %conv4 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %mmio.i.i.i13 = getelementptr inbounds %struct.savagefb_par, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %mmio.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i.i13, align 4
  %add.ptr.i.i.i14 = getelementptr i8, ptr %15, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i14, i8 %conv4) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %mmio.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i.i13, align 4
  %add.ptr.i.i3.i15 = getelementptr i8, ptr %17, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i15, i8 %r.0) #4, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prosavage_gpio_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %mmio.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv) #4, !srcloc !27
  %6 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %7, i32 33749
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %9 = lshr i8 %8, 3
  %.lobit = and i8 %9, 1
  %10 = zext i8 %.lobit to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prosavage_gpio_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %mmio.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv) #4, !srcloc !27
  %6 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %7, i32 33749
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %9 = lshr i8 %8, 2
  %.lobit = and i8 %9, 1
  %10 = zext i8 %.lobit to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage4_gpio_setsda(ptr nocapture noundef readonly %data, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 8
  %reg = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %5 = and i32 %4, -33554433
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 2
  %r.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %r.0)
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 8
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #4, !srcloc !33
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage4_gpio_setscl(ptr nocapture noundef readonly %data, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 8
  %reg = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp ne i32 %val, 0
  %5 = and i32 %4, -16777217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = zext i1 %tobool.not to i32
  %r.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %r.0)
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 8
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #4, !srcloc !33
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage4_gpio_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 8
  %reg = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %5 = lshr i32 %4, 28
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage4_gpio_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 8
  %reg = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %5 = lshr i32 %4, 27
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @savage_setup_i2c_bus(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then:                                          ; preds = %entry
  %adapter = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 1
  %name1 = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 1, i32 12
  %2 = call ptr @memcpy(ptr %name1, ptr @.str, i32 12)
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 2
  %algo_data = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %algo, ptr %algo_data, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %parent = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 1, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %udelay = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %udelay, align 4
  %timeout = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 2, i32 8
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %timeout, align 8
  %10 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chan, ptr %algo, align 8
  %driver_data.i.i = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 1, i32 9, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %chan, ptr %driver_data.i.i, align 4
  %setsda = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %setsda, align 4
  tail call void %13(ptr noundef %chan, i32 noundef 1) #4
  %setscl = getelementptr inbounds %struct.savagefb_i2c_chan, ptr %chan, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %setscl, align 8
  tail call void %15(ptr noundef %chan, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 4294960) #4
  %call14 = tail call i32 @i2c_bit_add_bus(ptr noundef %adapter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %do.body, label %do.end26

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @savage_setup_i2c_bus.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@savage_setup_i2c_bus, %if.then20)) #4
          to label %if.end31 [label %if.then20], !srcloc !40

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @savage_setup_i2c_bus.__UNIQUE_ID_ddebug305, ptr noundef %dev23, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str) #4
  br label %if.end31

do.end26:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chan, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str) #7
  br label %if.end31

if.end31:                                         ; preds = %do.end26, %if.then20, %do.body, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savagefb_delete_i2c_busses(ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %chan = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %adapter = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %chan, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @savagefb_probe_i2c_connector(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %out_edid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %chan = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then5_crit_edge, label %if.end

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 2, i32 1
  %call = tail call ptr @fb_ddc_read(ptr noundef %adapter) #4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.if.then5_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %entry.if.then5_crit_edge
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %call6 = tail call ptr @fb_firmware_edid(ptr noundef %5) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.if.end11_crit_edge, label %if.then8

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call ptr @kmemdup(ptr noundef nonnull %call6, i32 noundef 128, i32 noundef 3264) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %edid.2 = phi ptr [ %call, %if.end.if.end11_crit_edge ], [ %call9, %if.then8 ], [ null, %if.then5.if.end11_crit_edge ]
  %6 = ptrtoint ptr %out_edid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %edid.2, ptr %out_edid, align 4
  %tobool12.not = icmp eq ptr %edid.2, null
  %cond = zext i1 %tobool12.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_ddc_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_firmware_edid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/savage/savagefb-i2c.c", i32 205, i32 35}
!2 = !{ptr @__UNIQUE_ID_file306, !3, !"__UNIQUE_ID_file306", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/savage/savagefb-i2c.c", i32 241, i32 1}
!4 = !{ptr @__UNIQUE_ID_license307, !3, !"__UNIQUE_ID_license307", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/savage/savagefb-i2c.c", i32 157, i32 4}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @savage_setup_i2c_bus.__UNIQUE_ID_ddebug305, !6, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/savage/savagefb-i2c.c", i32 160, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @savage_setup_i2c_bus._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @savage_setup_i2c_bus._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2156238117}
!27 = !{i64 4991151}
!28 = !{i64 4991546}
!29 = !{i64 2156236379}
!30 = !{i64 4991766}
!31 = !{i64 2156244143}
!32 = !{i64 2156244384}
!33 = !{i64 4991348}
!34 = !{i64 2156245074}
!35 = !{i64 2156242698}
!36 = !{i64 2156242939}
!37 = !{i64 2156243629}
!38 = !{i64 2156246113}
!39 = !{i64 2156245588}
!40 = !{i64 2148957170, i64 2148957175, i64 2148957188, i64 2148957232, i64 2148957266, i64 2148957287}
