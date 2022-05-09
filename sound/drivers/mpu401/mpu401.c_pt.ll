; ModuleID = '/llk/IR_all_yes/sound/drivers/mpu401/mpu401.c_pt.bc'
source_filename = "../sound/drivers/mpu401/mpu401.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@__UNIQUE_ID_author189 = internal constant [51 x i8] c"snd_mpu401.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [36 x i8] c"snd_mpu401.description=MPU-401 UART\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [48 x i8] c"snd_mpu401.file=sound/drivers/mpu401/snd-mpu401\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [23 x i8] c"snd_mpu401.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_mpu401.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype193 = internal constant [39 x i8] c"snd_mpu401.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index194 = internal constant [54 x i8] c"snd_mpu401.parm=index:Index value for MPU-401 device.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_mpu401.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype195 = internal constant [38 x i8] c"snd_mpu401.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id196 = internal constant [49 x i8] c"snd_mpu401.parm=id:ID string for MPU-401 device.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_mpu401.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype197 = internal constant [41 x i8] c"snd_mpu401.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable198 = internal constant [46 x i8] c"snd_mpu401.parm=enable:Enable MPU-401 device.\00", section ".modinfo", align 1
@__param_str_port = internal constant [16 x i8] c"snd_mpu401.port\00", align 1
@__param_arr_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_long, ptr @port }, align 4
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.41 { ptr @__param_arr_port } }, section "__param", align 4
@__UNIQUE_ID_porttype199 = internal constant [39 x i8] c"snd_mpu401.parmtype=port:array of long\00", section ".modinfo", align 1
@__UNIQUE_ID_port200 = internal constant [48 x i8] c"snd_mpu401.parm=port:Port # for MPU-401 device.\00", section ".modinfo", align 1
@__param_str_irq = internal constant [15 x i8] c"snd_mpu401.irq\00", align 1
@__param_arr_irq = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @irq }, align 4
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.41 { ptr @__param_arr_irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype201 = internal constant [37 x i8] c"snd_mpu401.parmtype=irq:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq202 = internal constant [46 x i8] c"snd_mpu401.parm=irq:IRQ # for MPU-401 device.\00", section ".modinfo", align 1
@__param_str_uart_enter = internal constant [22 x i8] c"snd_mpu401.uart_enter\00", align 1
@__param_arr_uart_enter = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @uart_enter }, align 4
@__param_uart_enter = internal constant %struct.kernel_param { ptr @__param_str_uart_enter, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_uart_enter } }, section "__param", align 4
@__UNIQUE_ID_uart_entertype203 = internal constant [45 x i8] c"snd_mpu401.parmtype=uart_enter:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_uart_enter204 = internal constant [61 x i8] c"snd_mpu401.parm=uart_enter:Issue UART_ENTER command at open.\00", section ".modinfo", align 1
@__initcall__kmod_snd_mpu401__205_250_alsa_card_mpu401_init6 = internal global ptr @alsa_card_mpu401_init, section ".initcall6.init", align 4
@__exitcall_alsa_card_mpu401_exit = internal global ptr @alsa_card_mpu401_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { <{ i8, [31 x i8] }>, [32 x i8] } { <{ i8, [31 x i8] }> <{ i8 1, [31 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@port = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@irq = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535], [32 x i8] zeroinitializer }, align 32
@uart_enter = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@platform_devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_mpu401_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_mpu401_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_mpu401\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/drivers/mpu401/mpu401.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013specify port\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013specify or disable IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013the uart_enter option is obsolete; remove it\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MPU-401 UART\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s at %#lx, \00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"irq %d\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"polled\00", [25 x i8] zeroinitializer }, align 32
@snd_mpu401_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013MPU401 not detected at 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_mpu401_create\00", [46 x i8] zeroinitializer }, align 32
@snd_mpu401_create._entry_ptr = internal global ptr @snd_mpu401_create._entry, section ".printk_index", align 4
@snd_mpu401_devices = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 21, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 22, i32 14 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 23, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 27, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 28, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"uart_enter\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 29, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"platform_devices\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 48, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"snd_mpu401_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 112, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 115, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 93, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 97, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 59, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 66, i32 23 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 68, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 70, i32 52 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 72, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 78, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"snd_mpu401_devices\00", align 1
@___asan_gen_.73 = private constant [33 x i8] c"../sound/drivers/mpu401/mpu401.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 50, i32 21 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_enable198, ptr @__UNIQUE_ID_enabletype197, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_id196, ptr @__UNIQUE_ID_idtype195, ptr @__UNIQUE_ID_index194, ptr @__UNIQUE_ID_indextype193, ptr @__UNIQUE_ID_irq202, ptr @__UNIQUE_ID_irqtype201, ptr @__UNIQUE_ID_license192, ptr @__UNIQUE_ID_port200, ptr @__UNIQUE_ID_porttype199, ptr @__UNIQUE_ID_uart_enter204, ptr @__UNIQUE_ID_uart_entertype203, ptr @__exitcall_alsa_card_mpu401_exit, ptr @__initcall__kmod_snd_mpu401__205_250_alsa_card_mpu401_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_irq, ptr @__param_port, ptr @__param_uart_enter, ptr @alsa_card_mpu401_exit, ptr @snd_mpu401_create._entry, ptr @snd_mpu401_create._entry_ptr, ptr @index, ptr @id, ptr @enable, ptr @port, ptr @irq, ptr @uart_enter, ptr @platform_devices, ptr @snd_mpu401_driver, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snd_mpu401_devices], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_enter to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_card_mpu401_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @snd_mpu401_unregister_all()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mpu401_unregister_all() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @platform_devices, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #8
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_mpu401_driver) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_card_mpu401_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_mpu401_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup21_crit_edge, label %for.cond.preheader

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

for.cond.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %i.032 = phi i32 [ 0, %for.cond.preheader ], [ %inc13, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %i.032
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %3 = call ptr @memset(ptr %0, i32 255, i32 48)
  %4 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %5 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fwnode.i.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 8
  %7 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name2.i.i, align 4
  %8 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.032, ptr %id3.i.i, align 8
  %9 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %dma_mask.i.i, align 8
  %10 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %properties.i.i, align 8
  %11 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_device_unregister(ptr noundef %call.i.i) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12 = getelementptr [32 x ptr], ptr @platform_devices, i32 0, i32 %i.032
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %arrayidx12, align 4
  %15 = load i32, ptr @snd_mpu401_devices, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @snd_mpu401_devices, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.end3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc13 = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc13, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  %16 = load i32, ptr @snd_mpu401_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %if.then19, label %for.end.cleanup21_crit_edge

for.end.cleanup21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @snd_mpu401_unregister_all()
  br label %cleanup21

cleanup21:                                        ; preds = %if.then19, %for.end.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.0 = phi i32 [ -19, %if.then19 ], [ %call, %entry.cleanup21_crit_edge ], [ 0, %for.end.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mpu401_probe(ptr noundef %devptr) #1 align 64 {
entry:
  %card.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [32 x i32], ptr @port, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 93, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr [32 x i32], ptr @irq, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp2 = icmp eq i32 %5, 65535
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 97, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card.i) #8
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %card.i, align 4, !annotation !107
  %arrayidx.i = getelementptr [32 x i8], ptr @uart_enter, i32 0, i32 %1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 59, ptr noundef nonnull @.str.5) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %arrayidx1.i = getelementptr [32 x i32], ptr @index, i32 0, i32 %1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [32 x ptr], ptr @id, i32 0, i32 %1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2.i, align 4
  %call.i = call i32 @snd_devm_card_new(ptr noundef %dev5, i32 noundef %10, ptr noundef %12, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.snd_mpu401_create.exit.thread_crit_edge, label %if.end4.i

if.end.i.snd_mpu401_create.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_mpu401_create.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %driver.i, ptr @.str.6, i32 13)
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 3
  %call9.i = call ptr @strcpy(ptr noundef %shortname.i, ptr noundef %driver.i) #11
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call14.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname.i, ptr noundef nonnull @.str.7, ptr noundef %shortname.i, i32 noundef %17) #8
  %18 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp16.i = icmp sgt i32 %19, -1
  %20 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i, align 4
  %longname18.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 4
  br i1 %cmp16.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = call i32 @strlen(ptr noundef %longname18.i) #11
  %add.ptr.i = getelementptr i8, ptr %longname18.i, i32 %call22.i
  %call24.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.8, i32 noundef %19) #8
  br label %if.end28.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %strlen.i = call i32 @strlen(ptr %longname18.i) #11
  %endptr.i = getelementptr i8, ptr %longname18.i, i32 %strlen.i
  %22 = call ptr @memcpy(ptr %endptr.i, ptr @.str.9, i32 7)
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %if.then17.i
  %23 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card.i, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1, align 4
  %call31.i = call i32 @snd_mpu401_uart_new(ptr noundef %24, i32 noundef 0, i16 noundef zeroext 1, i32 noundef %26, i32 noundef 0, i32 noundef %28, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end.i, label %if.end8

do.end.i:                                         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %30) #12
  br label %snd_mpu401_create.exit.thread

snd_mpu401_create.exit.thread:                    ; preds = %do.end.i, %if.end.i.snd_mpu401_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.i.snd_mpu401_create.exit.thread_crit_edge ], [ %call31.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end28.i
  %31 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #8
  %call9 = call i32 @snd_card_register(ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %snd_mpu401_create.exit.thread, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then3 ], [ 0, %if.end12 ], [ %call9, %if.end8.cleanup_crit_edge ], [ %retval.0.i.ph, %snd_mpu401_create.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__UNIQUE_ID_author189, !1, !"__UNIQUE_ID_author189", i1 false, i1 false}
!1 = !{!"../sound/drivers/mpu401/mpu401.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description190, !3, !"__UNIQUE_ID_description190", i1 false, i1 false}
!3 = !{!"../sound/drivers/mpu401/mpu401.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../sound/drivers/mpu401/mpu401.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/drivers/mpu401/mpu401.c", i32 31, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype193, !8, !"__UNIQUE_ID_indextype193", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index194, !11, !"__UNIQUE_ID_index194", i1 false, i1 false}
!11 = !{!"../sound/drivers/mpu401/mpu401.c", i32 32, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/drivers/mpu401/mpu401.c", i32 33, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype195, !13, !"__UNIQUE_ID_idtype195", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id196, !16, !"__UNIQUE_ID_id196", i1 false, i1 false}
!16 = !{!"../sound/drivers/mpu401/mpu401.c", i32 34, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/drivers/mpu401/mpu401.c", i32 35, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype197, !18, !"__UNIQUE_ID_enabletype197", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable198, !21, !"__UNIQUE_ID_enable198", i1 false, i1 false}
!21 = !{!"../sound/drivers/mpu401/mpu401.c", i32 36, i32 1}
!22 = !{ptr @__param_port, !23, !"__param_port", i1 false, i1 false}
!23 = !{!"../sound/drivers/mpu401/mpu401.c", i32 41, i32 1}
!24 = !{ptr @__UNIQUE_ID_porttype199, !23, !"__UNIQUE_ID_porttype199", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_port200, !26, !"__UNIQUE_ID_port200", i1 false, i1 false}
!26 = !{!"../sound/drivers/mpu401/mpu401.c", i32 42, i32 1}
!27 = !{ptr @__param_irq, !28, !"__param_irq", i1 false, i1 false}
!28 = !{!"../sound/drivers/mpu401/mpu401.c", i32 43, i32 1}
!29 = !{ptr @__UNIQUE_ID_irqtype201, !28, !"__UNIQUE_ID_irqtype201", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_irq202, !31, !"__UNIQUE_ID_irq202", i1 false, i1 false}
!31 = !{!"../sound/drivers/mpu401/mpu401.c", i32 44, i32 1}
!32 = !{ptr @__param_uart_enter, !33, !"__param_uart_enter", i1 false, i1 false}
!33 = !{!"../sound/drivers/mpu401/mpu401.c", i32 45, i32 1}
!34 = !{ptr @__UNIQUE_ID_uart_entertype203, !33, !"__UNIQUE_ID_uart_entertype203", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_uart_enter204, !36, !"__UNIQUE_ID_uart_enter204", i1 false, i1 false}
!36 = !{!"../sound/drivers/mpu401/mpu401.c", i32 46, i32 1}
!37 = !{ptr @__initcall__kmod_snd_mpu401__205_250_alsa_card_mpu401_init6, !38, !"__initcall__kmod_snd_mpu401__205_250_alsa_card_mpu401_init6", i1 false, i1 false}
!38 = !{!"../sound/drivers/mpu401/mpu401.c", i32 250, i32 1}
!39 = !{ptr @__exitcall_alsa_card_mpu401_exit, !40, !"__exitcall_alsa_card_mpu401_exit", i1 false, i1 false}
!40 = !{!"../sound/drivers/mpu401/mpu401.c", i32 251, i32 1}
!41 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!42 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!43 = !{ptr @index, !44, !"index", i1 false, i1 false}
!44 = !{!"../sound/drivers/mpu401/mpu401.c", i32 21, i32 12}
!45 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!46 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!47 = !{ptr @id, !48, !"id", i1 false, i1 false}
!48 = !{!"../sound/drivers/mpu401/mpu401.c", i32 22, i32 14}
!49 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!50 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!51 = !{ptr @enable, !52, !"enable", i1 false, i1 false}
!52 = !{!"../sound/drivers/mpu401/mpu401.c", i32 23, i32 13}
!53 = !{ptr @__param_str_port, !23, !"__param_str_port", i1 false, i1 false}
!54 = !{ptr @__param_arr_port, !23, !"__param_arr_port", i1 false, i1 false}
!55 = !{ptr @port, !56, !"port", i1 false, i1 false}
!56 = !{!"../sound/drivers/mpu401/mpu401.c", i32 27, i32 13}
!57 = !{ptr @__param_str_irq, !28, !"__param_str_irq", i1 false, i1 false}
!58 = !{ptr @__param_arr_irq, !28, !"__param_arr_irq", i1 false, i1 false}
!59 = !{ptr @irq, !60, !"irq", i1 false, i1 false}
!60 = !{!"../sound/drivers/mpu401/mpu401.c", i32 28, i32 12}
!61 = !{ptr @__param_str_uart_enter, !33, !"__param_str_uart_enter", i1 false, i1 false}
!62 = !{ptr @__param_arr_uart_enter, !33, !"__param_arr_uart_enter", i1 false, i1 false}
!63 = !{ptr @uart_enter, !64, !"uart_enter", i1 false, i1 false}
!64 = !{!"../sound/drivers/mpu401/mpu401.c", i32 29, i32 13}
!65 = distinct !{null, !66, !"pnp_registered", i1 false, i1 false}
!66 = !{!"../sound/drivers/mpu401/mpu401.c", i32 49, i32 12}
!67 = distinct !{null, !68, !"snd_mpu401_pnp_driver", i1 false, i1 false}
!68 = !{!"../sound/drivers/mpu401/mpu401.c", i32 190, i32 26}
!69 = !{ptr @platform_devices, !70, !"platform_devices", i1 false, i1 false}
!70 = !{!"../sound/drivers/mpu401/mpu401.c", i32 48, i32 32}
!71 = !{ptr @.str, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/drivers/mpu401/mpu401.c", i32 115, i32 11}
!73 = !{ptr @snd_mpu401_driver, !74, !"snd_mpu401_driver", i1 false, i1 false}
!74 = !{!"../sound/drivers/mpu401/mpu401.c", i32 112, i32 31}
!75 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/drivers/mpu401/mpu401.c", i32 93, i32 3}
!77 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.4, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/drivers/mpu401/mpu401.c", i32 97, i32 3}
!80 = !{ptr @.str.5, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/drivers/mpu401/mpu401.c", i32 59, i32 3}
!82 = !{ptr @.str.6, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/drivers/mpu401/mpu401.c", i32 66, i32 23}
!84 = !{ptr @.str.7, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/drivers/mpu401/mpu401.c", i32 68, i32 26}
!86 = !{ptr @.str.8, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/drivers/mpu401/mpu401.c", i32 70, i32 52}
!88 = !{ptr @.str.9, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/drivers/mpu401/mpu401.c", i32 72, i32 26}
!90 = !{ptr @.str.10, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/drivers/mpu401/mpu401.c", i32 78, i32 3}
!92 = !{ptr @.str.11, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @snd_mpu401_create._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_mpu401_create._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @snd_mpu401_devices, !96, !"snd_mpu401_devices", i1 false, i1 false}
!96 = !{!"../sound/drivers/mpu401/mpu401.c", i32 50, i32 21}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
!107 = !{!"auto-init"}
