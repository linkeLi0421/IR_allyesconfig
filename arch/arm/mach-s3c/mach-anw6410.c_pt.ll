; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/mach-anw6410.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/mach-anw6410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.s3c_fb_platdata = type { ptr, [5 x ptr], ptr, i32, i32 }
%struct.s3c_fb_pd_win = type { i16, i16, i16, i16, i16, i16 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.plat_lcd_data = type { ptr, ptr, ptr }
%struct.dm9000_plat_data = type { i32, [6 x i8], ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"A&W6410\00", [24 x i8] zeroinitializer }, align 32
@__mach_desc_ANW6410 = internal constant %struct.machine_desc { i32 2183, ptr @.str, i32 256, ptr null, i32 229, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anw6410_map_io, ptr null, ptr @s3c6410_init_irq, ptr @s3c64xx_timer_init, ptr @anw6410_machine_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@anw6410_iodesc = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 196608, i32 65536, i32 0 }], section ".init.data", align 4
@anw6410_uartcfgs = internal global [2 x %struct.s3c2410_uartcfg] [%struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 0, i32 965, i32 3, i32 81 }, %struct.s3c2410_uartcfg { i8 1, i8 0, i16 0, i32 0, i32 0, i32 0, i32 965, i32 3, i32 81 }], section ".init.data", align 4
@anw6410_lcd_pdata = internal global %struct.s3c_fb_platdata { ptr @s3c64xx_fb_gpio_setup_24bpp, [5 x ptr] [ptr @anw6410_fb_win0, ptr null, ptr null, ptr null, ptr null], ptr @anw6410_lcd_timing, i32 0, i32 96 }, section ".init.data", align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"panel power\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LCD backlight\00", [18 x i8] zeroinitializer }, align 32
@anw6410_devices = internal global [3 x ptr] [ptr @s3c_device_fb, ptr @anw6410_lcd_powerdev, ptr @anw6410_device_eth], section ".init.data", align 4
@anw6410_fb_win0 = internal global { %struct.s3c_fb_pd_win, [20 x i8] } { %struct.s3c_fb_pd_win { i16 16, i16 32, i16 800, i16 480, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@anw6410_lcd_timing = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 800, i32 480, i32 0, i32 8, i32 13, i32 7, i32 5, i32 3, i32 1, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@anw6410_extdev_status = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s3c_device_fb = external dso_local global %struct.platform_device, align 8
@anw6410_lcd_powerdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.3, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @s3c_device_fb, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anw6410_lcd_power_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@anw6410_device_eth = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.4, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anw6410_dm9000_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @anw6410_dm9000_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform-lcd\00", [19 x i8] zeroinitializer }, align 32
@anw6410_lcd_power_data = internal global { %struct.plat_lcd_data, [20 x i8] } { %struct.plat_lcd_data { ptr null, ptr @anw6410_lcd_power_set, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm9000\00", [25 x i8] zeroinitializer }, align 32
@anw6410_dm9000_pdata = internal global { %struct.dm9000_plat_data, [40 x i8] } { %struct.dm9000_plat_data { i32 18, [6 x i8] zeroinitializer, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anw6410_dm9000_resource = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 402653184, i32 402653187, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 402653188, i32 402653688, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 116, i32 116, ptr null, i32 1028, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 222, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 214, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 215, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"anw6410_fb_win0\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 129, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"anw6410_lcd_timing\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 136, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"anw6410_extdev_status\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 62, i32 14 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"anw6410_lcd_powerdev\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 123, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"anw6410_device_eth\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 175, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 124, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"anw6410_lcd_power_data\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 119, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 176, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"anw6410_dm9000_pdata\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 170, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"anw6410_dm9000_resource\00", align 1
@___asan_gen_.42 = private constant [36 x i8] c"../arch/arm/mach-s3c/mach-anw6410.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 163, i32 24 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__mach_desc_ANW6410, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @anw6410_fb_win0, ptr @anw6410_lcd_timing, ptr @anw6410_extdev_status, ptr @anw6410_lcd_powerdev, ptr @anw6410_device_eth, ptr @.str.3, ptr @anw6410_lcd_power_data, ptr @.str.4, ptr @anw6410_dm9000_pdata, ptr @anw6410_dm9000_resource], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anw6410_fb_win0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anw6410_lcd_timing to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anw6410_extdev_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anw6410_lcd_powerdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anw6410_device_eth to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anw6410_lcd_power_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anw6410_dm9000_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anw6410_dm9000_resource to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @anw6410_map_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c64xx_init_io(ptr noundef nonnull @anw6410_iodesc, i32 noundef 1) #4
  tail call void @s3c64xx_set_xtal_freq(i32 noundef 12000000) #4
  tail call void @s3c24xx_init_uarts(ptr noundef nonnull @anw6410_uartcfgs, i32 noundef 2) #4
  tail call void @s3c64xx_set_timer_source(i32 noundef 3, i32 noundef 4) #7
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528864 to ptr)) #4, !srcloc !44
  %and.i = and i32 %0, -4
  %or.i = or i32 %and.i, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528864 to ptr), i32 %or.i) #4, !srcloc !45
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -161480692 to ptr)) #4, !srcloc !44
  %and2.i = and i32 %1, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -161480692 to ptr), i32 %and2.i) #4, !srcloc !45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c6410_init_irq() #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_timer_init() #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @anw6410_machine_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_fb_set_platdata(ptr noundef nonnull @anw6410_lcd_pdata) #4
  %call = tail call i32 @gpio_request(i32 noundef 39, ptr noundef nonnull @.str.1) #4
  %call1 = tail call i32 @gpio_request(i32 noundef 42, ptr noundef nonnull @.str.2) #4
  %0 = load i32, ptr @anw6410_extdev_status, align 4
  %or.i = or i32 %0, 134217728
  store i32 %or.i, ptr @anw6410_extdev_status, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134217728 to ptr), i32 %or.i) #4, !srcloc !45
  %call2 = tail call i32 @platform_add_devices(ptr noundef nonnull @anw6410_devices, i32 noundef 3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_init_io(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_set_xtal_freq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c24xx_init_uarts(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_set_timer_source(i32 noundef, i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_fb_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_fb_gpio_setup_24bpp() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anw6410_lcd_power_set(ptr nocapture noundef readnone %pd, i32 noundef %power) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool.not = icmp eq i32 %power, 0
  %0 = load i32, ptr @anw6410_extdev_status, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %0, 1073741824
  store i32 %or, ptr @anw6410_extdev_status, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134217728 to ptr), i32 %or) #4, !srcloc !45
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %0, -1073741825
  store i32 %and, ptr @anw6410_extdev_status, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134217728 to ptr), i32 %and) #4, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink10 = phi i32 [ 0, %if.else ], [ 1, %if.then ]
  %call.i6 = tail call ptr @gpio_to_desc(i32 noundef 39) #4
  %call1.i7 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i6, i32 noundef %.sink10) #4
  %call.i8 = tail call ptr @gpio_to_desc(i32 noundef 42) #4
  %call1.i9 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i8, i32 noundef %.sink10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 222, i32 1}
!2 = !{ptr @__mach_desc_ANW6410, !1, !"__mach_desc_ANW6410", i1 false, i1 false}
!3 = !{ptr @anw6410_iodesc, !4, !"anw6410_iodesc", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 185, i32 24}
!5 = !{ptr @anw6410_uartcfgs, !6, !"anw6410_uartcfgs", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 64, i32 31}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 214, i32 31}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 215, i32 31}
!11 = !{ptr @anw6410_lcd_pdata, !12, !"anw6410_lcd_pdata", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 148, i32 31}
!13 = !{ptr @anw6410_fb_win0, !14, !"anw6410_fb_win0", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 129, i32 29}
!15 = !{ptr @anw6410_lcd_timing, !16, !"anw6410_lcd_timing", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 136, i32 28}
!17 = !{ptr @anw6410_extdev_status, !18, !"anw6410_extdev_status", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 62, i32 14}
!19 = !{ptr @anw6410_devices, !20, !"anw6410_devices", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 194, i32 32}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 124, i32 12}
!23 = !{ptr @anw6410_lcd_powerdev, !24, !"anw6410_lcd_powerdev", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 123, i32 31}
!25 = !{ptr @anw6410_lcd_power_data, !26, !"anw6410_lcd_power_data", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 119, i32 29}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 176, i32 10}
!29 = !{ptr @anw6410_device_eth, !30, !"anw6410_device_eth", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 175, i32 31}
!31 = !{ptr @anw6410_dm9000_pdata, !32, !"anw6410_dm9000_pdata", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 170, i32 32}
!33 = !{ptr @anw6410_dm9000_resource, !34, !"anw6410_dm9000_resource", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-s3c/mach-anw6410.c", i32 163, i32 24}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 4202269}
!45 = !{i64 4201851}
