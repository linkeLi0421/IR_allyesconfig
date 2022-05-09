; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-usb.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.usb_clk_data = type { i32, i32, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.usb_reset_data = type { ptr, ptr, ptr, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__of_table_sun4i_a10_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_a31_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_a23_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_h3_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-usb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_usb_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_usb_mod = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-usb-mod-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_usb_mod_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_usb_phy = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-usb-phy-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_usb_phy_setup }, section "__clk_of_table", align 4
@sun4i_a10_usb_clk_data = internal constant %struct.usb_clk_data { i32 448, i32 7, i8 0 }, section ".init.rodata", align 4
@sun4i_a10_usb_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/sunxi/clk-usb.c\00", [36 x i8] zeroinitializer }, align 32
@sunxi_usb_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Could not get clock for reset controls\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sunxi_usb_clk_setup\00", [44 x i8] zeroinitializer }, align 32
@sunxi_usb_clk_setup._entry_ptr = internal global ptr @sunxi_usb_clk_setup._entry, section ".printk_index", align 4
@sunxi_usb_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @sunxi_usb_reset_assert, ptr @sunxi_usb_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun4i_a10_usb_lock\00", [45 x i8] zeroinitializer }, align 32
@sun5i_a13_usb_clk_data = internal constant %struct.usb_clk_data { i32 320, i32 3, i8 0 }, section ".init.rodata", align 4
@sun6i_a31_usb_clk_data = internal constant %struct.usb_clk_data { i32 460544, i32 7, i8 0 }, section ".init.rodata", align 4
@sun8i_a23_usb_clk_data = internal constant %struct.usb_clk_data { i32 69376, i32 7, i8 0 }, section ".init.rodata", align 4
@sun8i_h3_usb_clk_data = internal constant %struct.usb_clk_data { i32 986880, i32 15, i8 0 }, section ".init.rodata", align 4
@sun9i_a80_usb_mod_data = internal constant %struct.usb_clk_data { i32 126, i32 917504, i8 1 }, section ".init.rodata", align 4
@a80_usb_mod_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"a80_usb_mod_lock\00", [47 x i8] zeroinitializer }, align 32
@sun9i_a80_usb_phy_data = internal constant %struct.usb_clk_data { i32 1086, i32 4063232, i8 1 }, section ".init.rodata", align 4
@a80_usb_phy_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"a80_usb_phy_lock\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"sun4i_a10_usb_lock\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 125, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 130, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 151, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"sunxi_usb_reset_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 71, i32 39 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 261, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 170, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"a80_usb_mod_lock\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 229, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"a80_usb_phy_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [31 x i8] c"../drivers/clk/sunxi/clk-usb.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 243, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__of_table_sun4i_a10_usb, ptr @__of_table_sun5i_a13_usb, ptr @__of_table_sun6i_a31_usb, ptr @__of_table_sun8i_a23_usb, ptr @__of_table_sun8i_h3_usb, ptr @__of_table_sun9i_a80_usb_mod, ptr @__of_table_sun9i_a80_usb_phy, ptr @sunxi_usb_clk_setup._entry, ptr @sunxi_usb_clk_setup._entry_ptr, ptr @sun4i_a10_usb_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sunxi_usb_reset_ops, ptr @.str.4, ptr @.str.5, ptr @a80_usb_mod_lock, ptr @.str.6, ptr @a80_usb_phy_lock, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_usb_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_usb_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_usb_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a80_usb_mod_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a80_usb_phy_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_usb_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %node, ptr noundef nonnull @sun4i_a10_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun5i_a13_usb_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %node, ptr noundef nonnull @sun5i_a13_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_a31_usb_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %node, ptr noundef nonnull @sun6i_a31_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_a23_usb_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %node, ptr noundef nonnull @sun8i_a23_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_h3_usb_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %node, ptr noundef nonnull @sun8i_h3_usb_clk_data, ptr noundef nonnull @sun4i_a10_usb_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_usb_mod_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %node, ptr noundef nonnull @sun9i_a80_usb_mod_data, ptr noundef nonnull @a80_usb_mod_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_usb_phy_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_usb_clk_setup(ptr noundef %node, ptr noundef nonnull @sun9i_a80_usb_phy_data, ptr noundef nonnull @a80_usb_phy_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_usb_clk_setup(ptr noundef %node, ptr noundef %data, ptr noundef %lock) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %0 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !59
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %1 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %2, %cond.true.i ], [ @.str.4, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %of_node_full_name.exit.cleanup_crit_edge, label %if.end

of_node_full_name.exit.cleanup_crit_edge:         ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  %call3 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 8) #12
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end7.i.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i124 = icmp eq i32 %4, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #8, !range !60
  %.neg = mul nsw i32 %6, -4
  %sub.i.i.op.op = add nsw i32 %.neg, 128
  %7 = select i1 %tobool.not.i124, i32 132, i32 %sub.i.i.op.op
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %call7.i, align 8
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end7.i.i
  %call17 = tail call i32 @_find_next_bit_be(ptr noundef %data, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call17)
  %cmp133 = icmp slt i32 %call17, 32
  br i1 %cmp133, label %if.end15.for.body_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %if.end15.for.body_crit_edge
  %j.0135 = phi i32 [ %inc, %if.end38.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %i.0134 = phi i32 [ %call47, %if.end38.for.body_crit_edge ], [ %call17, %if.end15.for.body_crit_edge ]
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %j.0135) #8
  %9 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_name, align 4
  %conv = trunc i32 %i.0134 to i8
  %call19 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %10, ptr noundef nonnull %call3, i32 noundef 0, ptr noundef %call1, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef %lock) #8
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i, align 8
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.0134
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %arrayidx, align 4
  %14 = load ptr, ptr %call7.i, align 8
  %arrayidx22 = getelementptr ptr, ptr %14, i32 %i.0134
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx22, align 4
  %cmp.i126 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %do.end, label %for.body.if.end38_crit_edge, !prof !61

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 130, i32 noundef 9, ptr noundef null) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end, %for.body.if.end38_crit_edge
  %inc = add i32 %j.0135, 1
  %add46 = add nsw i32 %i.0134, 1
  %call47 = call i32 @_find_next_bit_be(ptr noundef %data, i32 noundef 32, i32 noundef %add46) #8
  %cmp = icmp slt i32 %call47, 32
  br i1 %cmp, label %if.end38.for.body_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %if.end15.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %call17, %if.end15.for.end_crit_edge ], [ %call47, %if.end38.for.end_crit_edge ]
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.0.lcssa, ptr %clk_num, align 4
  %call48 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i) #8
  %reset_mask = getelementptr inbounds %struct.usb_clk_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %reset_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reset_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp49 = icmp eq i32 %19, 0
  br i1 %cmp49, label %for.end.cleanup_crit_edge, label %if.end52

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 56) #12
  %tobool54.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %reset_needs_clk = getelementptr inbounds %struct.usb_clk_data, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %reset_needs_clk to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reset_needs_clk, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool57.not = icmp eq i8 %22, 0
  br i1 %tobool57.not, label %if.end56.if.end69_crit_edge, label %if.then58

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then58:                                        ; preds = %if.end56
  %call59 = call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #8
  %clk = getelementptr inbounds %struct.usb_reset_data, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call59, ptr %clk, align 8
  %cmp.i127 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end65, label %if.then58.if.end69_crit_edge

if.then58.if.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.end65:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end69:                                         ; preds = %if.then58.if.end69_crit_edge, %if.end56.if.end69_crit_edge
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1, ptr %call7.i.i, align 8
  %lock71 = getelementptr inbounds %struct.usb_reset_data, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %lock71 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lock, ptr %lock71, align 4
  %26 = ptrtoint ptr %reset_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reset_mask, align 4
  %28 = call i32 @llvm.ctlz.i32(i32 %27, i1 false) #8, !range !60
  %add74 = sub nuw nsw i32 32, %28
  %rcdev = getelementptr inbounds %struct.usb_reset_data, ptr %call7.i.i, i32 0, i32 3
  %nr_resets = getelementptr inbounds %struct.usb_reset_data, ptr %call7.i.i, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add74, ptr %nr_resets, align 4
  %30 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sunxi_usb_reset_ops, ptr %rcdev, align 4
  %of_node = getelementptr inbounds %struct.usb_reset_data, ptr %call7.i.i, i32 0, i32 3, i32 5
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %node, ptr %of_node, align 8
  %call78 = call i32 @reset_controller_register(ptr noundef %rcdev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end65, %if.end52.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then14, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %of_node_full_name.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_usb_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %rcdev, i32 -4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -12
  %lock = getelementptr i8, ptr %rcdev, i32 -8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !63
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %id
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !66
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call4) #8
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_usb_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %rcdev, i32 -4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -12
  %lock = getelementptr i8, ptr %rcdev, i32 -8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !63
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %id
  %or = or i32 %7, %shl
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !66
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call4) #8
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__of_table_sun4i_a10_usb, !1, !"__of_table_sun4i_a10_usb", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 176, i32 1}
!2 = !{ptr @__of_table_sun5i_a13_usb, !3, !"__of_table_sun5i_a13_usb", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 187, i32 1}
!4 = !{ptr @__of_table_sun6i_a31_usb, !5, !"__of_table_sun6i_a31_usb", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 198, i32 1}
!6 = !{ptr @__of_table_sun8i_a23_usb, !7, !"__of_table_sun8i_a23_usb", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 209, i32 1}
!8 = !{ptr @__of_table_sun8i_h3_usb, !9, !"__of_table_sun8i_h3_usb", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 221, i32 1}
!10 = !{ptr @__of_table_sun9i_a80_usb_mod, !11, !"__of_table_sun9i_a80_usb_mod", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 235, i32 1}
!12 = !{ptr @__of_table_sun9i_a80_usb_phy, !13, !"__of_table_sun9i_a80_usb_phy", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 249, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 125, i32 39}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 130, i32 3}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 151, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sunxi_usb_clk_setup._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @sunxi_usb_clk_setup._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/of.h", i32 261, i32 30}
!25 = !{ptr @sunxi_usb_reset_ops, !26, !"sunxi_usb_reset_ops", i1 false, i1 false}
!26 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 71, i32 39}
!27 = !{ptr @sun4i_a10_usb_clk_data, !28, !"sun4i_a10_usb_clk_data", i1 false, i1 false}
!28 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 165, i32 34}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 170, i32 8}
!31 = !{ptr @sun4i_a10_usb_lock, !30, !"sun4i_a10_usb_lock", i1 false, i1 false}
!32 = !{ptr @sun5i_a13_usb_clk_data, !33, !"sun5i_a13_usb_clk_data", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 178, i32 34}
!34 = !{ptr @sun6i_a31_usb_clk_data, !35, !"sun6i_a31_usb_clk_data", i1 false, i1 false}
!35 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 189, i32 34}
!36 = !{ptr @sun8i_a23_usb_clk_data, !37, !"sun8i_a23_usb_clk_data", i1 false, i1 false}
!37 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 200, i32 34}
!38 = !{ptr @sun8i_h3_usb_clk_data, !39, !"sun8i_h3_usb_clk_data", i1 false, i1 false}
!39 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 211, i32 34}
!40 = !{ptr @sun9i_a80_usb_mod_data, !41, !"sun9i_a80_usb_mod_data", i1 false, i1 false}
!41 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 223, i32 34}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 229, i32 8}
!44 = !{ptr @a80_usb_mod_lock, !43, !"a80_usb_mod_lock", i1 false, i1 false}
!45 = !{ptr @sun9i_a80_usb_phy_data, !46, !"sun9i_a80_usb_phy_data", i1 false, i1 false}
!46 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 237, i32 34}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/sunxi/clk-usb.c", i32 243, i32 8}
!49 = !{ptr @a80_usb_phy_lock, !48, !"a80_usb_phy_lock", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i32 0, i32 33}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i8 0, i8 2}
!63 = !{i64 4063363}
!64 = !{i64 2152564140}
!65 = !{i64 2152564455}
!66 = !{i64 4062945}
!67 = !{i64 2152566739}
!68 = !{i64 2152567052}
