; ModuleID = '/llk/IR_all_yes/arch/arm/mach-cns3xxx/core.c_pt.bc'
source_filename = "../arch/arm/mach-cns3xxx/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_desc = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.of_dev_auxdata = type { ptr, i32, ptr, ptr }
%struct.usb_ehci_pdata = type { i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_ohci_pdata = type { i8, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }

@cns3xxx_io_desc = internal global [10 x %struct.map_desc] [%struct.map_desc { i32 -83869696, i32 589824, i32 8192, i32 0 }, %struct.map_desc { i32 -83873792, i32 509952, i32 4096, i32 0 }, %struct.map_desc { i32 -83886080, i32 483328, i32 4096, i32 0 }, %struct.map_desc { i32 -83881984, i32 487424, i32 4096, i32 0 }, %struct.map_desc { i32 -520093696, i32 700416, i32 4096, i32 0 }, %struct.map_desc { i32 -486539264, i32 708608, i32 65536, i32 0 }, %struct.map_desc { i32 -469762048, i32 712704, i32 16777216, i32 0 }, %struct.map_desc { i32 -385875968, i32 765952, i32 4096, i32 0 }, %struct.map_desc { i32 -352321536, i32 774144, i32 65536, i32 0 }, %struct.map_desc { i32 -335544320, i32 778240, i32 16777216, i32 0 }], section ".init.data", align 4
@cns3xxx_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016powering system down...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cns3xxx_power_off\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-cns3xxx/core.c\00", [35 x i8] zeroinitializer }, align 32
@cns3xxx_power_off._entry_ptr = internal global ptr @cns3xxx_power_off._entry, section ".printk_index", align 4
@cns3xxx_tmr1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cavium Networks CNS3xxx\00", [40 x i8] zeroinitializer }, align 32
@cns3xxx_dt_compat = internal constant [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr null], section ".init.rodata", align 4
@__mach_desc_CNS3XXX_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.3, i32 0, ptr @cns3xxx_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cns3xxx_map_io, ptr null, ptr @cns3xxx_init_irq, ptr @cns3xxx_timer_init, ptr @cns3xxx_init, ptr @cns3xxx_pcie_init_late, ptr null, ptr @cns3xxx_restart }, section ".arch.info.init", align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@__cns3xxx_timer_init._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 244, ptr null, ptr null }, align 1
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed to request irq %d (timer)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__cns3xxx_timer_init\00", [43 x i8] zeroinitializer }, align 32
@__cns3xxx_timer_init._entry_ptr = internal global ptr @__cns3xxx_timer_init._entry, section ".printk_index", align 4
@cns3xxx_tmr1_clockevent = internal global %struct.clock_event_device { ptr null, ptr @cns3xxx_timer_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @cns3xxx_set_periodic, ptr @cns3xxx_set_oneshot, ptr null, ptr @cns3xxx_shutdown, ptr @cns3xxx_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.7, i32 350, i32 0, i32 0, ptr @cpu_all_bits, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cns3xxx timer1\00", [17 x i8] zeroinitializer }, align 32
@cpu_all_bits = external dso_local constant [1 x i32], align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cavium,cns3410\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cavium,cns3420\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cavium,cns3420-ahci\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cavium,cns3420-sdhci\00", [43 x i8] zeroinitializer }, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@cns3xxx_auxdata = internal constant [5 x %struct.of_dev_auxdata] [%struct.of_dev_auxdata { ptr @.str.12, i32 -2113929216, ptr @.str.13, ptr @cns3xxx_usb_ehci_pdata }, %struct.of_dev_auxdata { ptr @.str.14, i32 -2013265920, ptr @.str.15, ptr @cns3xxx_usb_ohci_pdata }, %struct.of_dev_auxdata { ptr @.str.10, i32 -2097152000, ptr @.str.16, ptr null }, %struct.of_dev_auxdata { ptr @.str.11, i32 -2063597568, ptr @.str.16, ptr null }, %struct.of_dev_auxdata zeroinitializer], section ".init.rodata", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel,usb-ehci\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci-platform\00", [18 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ehci_pdata = internal global { %struct.usb_ehci_pdata, [40 x i8] } { %struct.usb_ehci_pdata { i32 0, i8 0, ptr @csn3xxx_usb_power_on, ptr @csn3xxx_usb_power_off, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel,usb-ohci\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ohci-platform\00", [18 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ohci_pdata = internal global { %struct.usb_ohci_pdata, [44 x i8] } { %struct.usb_ohci_pdata { i8 0, i32 1, ptr @csn3xxx_usb_power_on, ptr @csn3xxx_usb_power_off, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahci\00", [27 x i8] zeroinitializer }, align 32
@usb_pwr_ref = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 99, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"cns3xxx_tmr1\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 111, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 400, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 243, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 244, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 154, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 395, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 396, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 356, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 376, i32 43 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 343, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 343, i32 40 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"cns3xxx_usb_ehci_pdata\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 331, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 344, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 344, i32 45 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"cns3xxx_usb_ohci_pdata\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 336, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [32 x i8] c"../arch/arm/mach-cns3xxx/core.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 345, i32 47 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__cns3xxx_timer_init._entry, ptr @__cns3xxx_timer_init._entry_ptr, ptr @__mach_desc_CNS3XXX_DT, ptr @cns3xxx_power_off._entry, ptr @cns3xxx_power_off._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cns3xxx_tmr1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @cns3xxx_usb_ehci_pdata, ptr @.str.14, ptr @.str.15, ptr @cns3xxx_usb_ohci_pdata, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_tmr1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ehci_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ohci_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cns3xxx_map_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @cns3xxx_io_desc, i32 noundef 10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cns3xxx_init_irq() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gic_init(ptr noundef nonnull inttoptr (i32 -83865600 to ptr), ptr noundef nonnull inttoptr (i32 -83869440 to ptr)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cns3xxx_power_off() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -83881904 to ptr)) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %1 = and i32 %0, -917505
  %2 = or i32 %1, 655360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83881904 to ptr), i32 %2) #6, !srcloc !62
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cns3xxx_timer_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr inttoptr (i32 -83873792 to ptr), ptr @cns3xxx_tmr1, align 4
  tail call fastcc void @__cns3xxx_timer_init() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cns3xxx_timer_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %0 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %1 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %2 = load ptr, ptr @cns3xxx_tmr1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 13108480) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %3 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr12 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 13108480) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr16 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !62
  %6 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr21 = getelementptr i8, ptr %6, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %8 = and i32 %7, -117440513
  %9 = or i32 %8, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr26 = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %9) #6, !srcloc !62
  %11 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr29 = getelementptr i8, ptr %11, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %13 = or i32 %12, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr37 = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %13) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %15 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr41 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %16 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr45 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 0) #6, !srcloc !62
  %17 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr48 = getelementptr i8, ptr %17, i32 56
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %19 = or i32 %18, 939524096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %20 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr56 = getelementptr i8, ptr %20, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %19) #6, !srcloc !62
  %21 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr59 = getelementptr i8, ptr %21, i32 48
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %23 = or i32 %22, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %24 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr67 = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %23) #6, !srcloc !62
  %call.i = tail call i32 @request_threaded_irq(i32 noundef 89, ptr noundef nonnull @cns3xxx_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.4, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end71

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end71:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 89) #9
  br label %if.end

if.end:                                           ; preds = %do.end71, %entry.if.end_crit_edge
  tail call fastcc void @cns3xxx_clockevents_init() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cns3xxx_l2x0_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef -1845493760, i32 noundef 4096) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !79

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 263, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call, i32 264
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %1 = and i32 %0, -1996947457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !62
  %add.ptr33 = getelementptr i8, ptr %call, i32 268
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %3 = and i32 %2, -1996947457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %3) #6, !srcloc !62
  tail call void @l2x0_init(ptr noundef nonnull %call, i32 noundef 5242880, i32 noundef -32567297) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @l2x0_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cns3xxx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cns3xxx_l2x0_init() #10
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10) #6
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef %call) #6
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -83885296 to ptr)) #6, !srcloc !59
  %or3 = or i32 %0, 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83885296 to ptr), i32 %or3) #6, !srcloc !62
  tail call void @cns3xxx_pwr_power_up(i32 noundef 1024) #6
  tail call void @cns3xxx_pwr_power_up(i32 noundef 2048) #6
  tail call void @cns3xxx_pwr_clk_en(i32 noundef 524288) #6
  tail call void @cns3xxx_pwr_soft_rst(i32 noundef 524288) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11) #6
  %call5 = tail call zeroext i1 @of_device_is_available(ptr noundef %call4) #6
  br i1 %call5, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -83886060 to ptr)) #6, !srcloc !59
  %or8 = or i32 %1, 536805380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83886060 to ptr), i32 %or8) #6, !srcloc !62
  tail call void @cns3xxx_pwr_clk_en(i32 noundef 33554432) #6
  tail call void @cns3xxx_pwr_soft_rst(i32 noundef 33554432) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @cns3xxx_power_off, ptr @pm_power_off, align 4
  %call10 = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef nonnull @cns3xxx_auxdata, ptr noundef null) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cns3xxx_pcie_init_late() #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_restart(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cns3xxx_timer_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 52
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %2 = and i32 %1, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !62
  %3 = load ptr, ptr @cns3xxx_tmr1_clockevent, align 128
  tail call void %3(ptr noundef nonnull @cns3xxx_tmr1_clockevent) #6
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cns3xxx_clockevents_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 89, ptr getelementptr inbounds (%struct.clock_event_device, ptr @cns3xxx_tmr1_clockevent, i32 0, i32 23), align 4
  %call = tail call i32 @cns3xxx_cpu_clock() #6
  %shr = ashr i32 %call, 3
  %mul = mul i32 %shr, 1000000
  tail call void @clockevents_config_and_register(ptr noundef nonnull @cns3xxx_tmr1_clockevent, i32 noundef %mul, i32 noundef 15, i32 noundef -1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cns3xxx_timer_set_next_event(i32 noundef %evt, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 48
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %evt)
  %3 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %4 = or i32 %1, 16777216
  %5 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #6, !srcloc !62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cns3xxx_set_periodic(ptr nocapture noundef readnone %clk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 48
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %call2 = tail call i32 @cns3xxx_cpu_clock() #6
  %div = sdiv i32 %call2, 8
  %mul = mul i32 %div, 20
  %div3 = sdiv i32 %mul, 300
  %mul4 = mul i32 %div3, 151552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %mul4)
  %3 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #6, !srcloc !62
  %4 = or i32 %1, 84017152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %4) #6, !srcloc !62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cns3xxx_set_oneshot(ptr nocapture noundef readnone %clk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 48
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %2 = or i32 %1, 67239936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %3 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #6, !srcloc !62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cns3xxx_shutdown(ptr nocapture noundef readnone %clk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %0 = load ptr, ptr @cns3xxx_tmr1, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !62
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cns3xxx_cpu_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_power_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_clk_en(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_soft_rst(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csn3xxx_usb_power_on(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usb_pwr_ref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr nonnull @usb_pwr_ref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @usb_pwr_ref, ptr nonnull @usb_pwr_ref, i32 1, ptr nonnull elementtype(i32) @usb_pwr_ref) #6, !srcloc !96
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cns3xxx_pwr_power_up(i32 noundef 8) #6
  tail call void @cns3xxx_pwr_clk_en(i32 noundef 65536) #6
  tail call void @cns3xxx_pwr_soft_rst(i32 noundef 65536) #6
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -83886076 to ptr)) #6, !srcloc !59
  %or = or i32 %1, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83886076 to ptr), i32 %or) #6, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csn3xxx_usb_power_off(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usb_pwr_ref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr nonnull @usb_pwr_ref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @usb_pwr_ref, ptr nonnull @usb_pwr_ref, i32 1, ptr nonnull elementtype(i32) @usb_pwr_ref) #6, !srcloc !99
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cns3xxx_pwr_clk_dis(i32 noundef 65536) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_clk_dis(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 99, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cns3xxx_power_off._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cns3xxx_power_off._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 400, i32 1}
!8 = !{ptr @__mach_desc_CNS3XXX_DT, !7, !"__mach_desc_CNS3XXX_DT", i1 false, i1 false}
!9 = !{ptr @cns3xxx_tmr1, !10, !"cns3xxx_tmr1", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 111, i32 22}
!11 = !{ptr @cns3xxx_io_desc, !12, !"cns3xxx_io_desc", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 26, i32 24}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 243, i32 31}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 244, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__cns3xxx_timer_init._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @__cns3xxx_timer_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 154, i32 12}
!22 = !{ptr @cns3xxx_tmr1_clockevent, !23, !"cns3xxx_tmr1_clockevent", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 153, i32 34}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 395, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 396, i32 2}
!28 = !{ptr @cns3xxx_dt_compat, !29, !"cns3xxx_dt_compat", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 394, i32 26}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 356, i32 43}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 376, i32 43}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 343, i32 4}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 343, i32 40}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 344, i32 4}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 344, i32 45}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 345, i32 47}
!44 = !{ptr @cns3xxx_auxdata, !45, !"cns3xxx_auxdata", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 342, i32 36}
!46 = !{ptr @cns3xxx_usb_ehci_pdata, !47, !"cns3xxx_usb_ehci_pdata", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 331, i32 30}
!48 = !{ptr @cns3xxx_usb_ohci_pdata, !49, !"cns3xxx_usb_ohci_pdata", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-cns3xxx/core.c", i32 336, i32 30}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 4207693}
!60 = !{i64 2153245507}
!61 = !{i64 2153245727}
!62 = !{i64 4207275}
!63 = !{i64 2153251483}
!64 = !{i64 2153251873}
!65 = !{i64 2153252269}
!66 = !{i64 2153252683}
!67 = !{i64 2153253091}
!68 = !{i64 2153253481}
!69 = !{i64 2153254151}
!70 = !{i64 2153254377}
!71 = !{i64 2153255068}
!72 = !{i64 2153255289}
!73 = !{i64 2153255685}
!74 = !{i64 2153256075}
!75 = !{i64 2153256745}
!76 = !{i64 2153256971}
!77 = !{i64 2153257662}
!78 = !{i64 2153257883}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2153261257}
!81 = !{i64 2153261472}
!82 = !{i64 2153262114}
!83 = !{i64 2153262329}
!84 = !{i64 2153250661}
!85 = !{i64 2153250874}
!86 = !{i64 2153249026}
!87 = !{i64 2153249247}
!88 = !{i64 2153249657}
!89 = !{i64 2153247701}
!90 = !{i64 2153247939}
!91 = !{i64 2153248347}
!92 = !{i64 2153246800}
!93 = !{i64 2153247022}
!94 = !{i64 2153246130}
!95 = !{i64 2148342547}
!96 = !{i64 2148257856, i64 2148257888, i64 2148257917, i64 2148257951, i64 2148257982, i64 2148258005}
!97 = !{i64 2148342776}
!98 = !{i64 2148345588}
!99 = !{i64 2148260321, i64 2148260353, i64 2148260382, i64 2148260416, i64 2148260447, i64 2148260470}
!100 = !{i64 2148345817}
