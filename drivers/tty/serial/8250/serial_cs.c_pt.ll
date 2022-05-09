; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/serial_cs.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/serial_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.71 }
%union.anon.71 = type { ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.serial_quirk = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.serial_info = type { ptr, i32, i32, i32, i32, i32, i32, [4 x i32], ptr }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__param_str_do_sound = internal constant [19 x i8] c"serial_cs.do_sound\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@do_sound = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_do_sound = internal constant %struct.kernel_param { ptr @__param_str_do_sound, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.71 { ptr @do_sound } }, section "__param", align 4
@__UNIQUE_ID_do_soundtype242 = internal constant [32 x i8] c"serial_cs.parmtype=do_sound:int\00", section ".modinfo", align 1
@__param_str_buggy_uart = internal constant [21 x i8] c"serial_cs.buggy_uart\00", align 1
@buggy_uart = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_buggy_uart = internal constant %struct.kernel_param { ptr @__param_str_buggy_uart, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.71 { ptr @buggy_uart } }, section "__param", align 4
@__UNIQUE_ID_buggy_uarttype243 = internal constant [34 x i8] c"serial_cs.parmtype=buggy_uart:int\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware248 = internal constant [35 x i8] c"serial_cs.firmware=cis/PCMLM28.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware249 = internal constant [35 x i8] c"serial_cs.firmware=cis/DP83903.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware250 = internal constant [37 x i8] c"serial_cs.firmware=cis/3CCFEM556.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware251 = internal constant [36 x i8] c"serial_cs.firmware=cis/3CXEM556.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware252 = internal constant [38 x i8] c"serial_cs.firmware=cis/SW_8xx_SER.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [38 x i8] c"serial_cs.firmware=cis/SW_7xx_SER.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [38 x i8] c"serial_cs.firmware=cis/SW_555_SER.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [37 x i8] c"serial_cs.firmware=cis/MT5634ZLX.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [35 x i8] c"serial_cs.firmware=cis/COMpad2.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [35 x i8] c"serial_cs.firmware=cis/COMpad4.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [37 x i8] c"serial_cs.firmware=cis/RS-COM-2P.cis\00", section ".modinfo", align 1
@__initcall__kmod_serial_cs__259_871_serial_cs_driver_init6 = internal global ptr @serial_cs_driver_init, section ".initcall6.init", align 4
@serial_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @serial_probe, ptr @serial_detach, ptr @serial_suspend, ptr @serial_resume, ptr null, ptr @serial_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_serial_cs_driver_exit = internal global ptr @serial_cs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file260 = internal constant [49 x i8] c"serial_cs.file=drivers/tty/serial/8250/serial_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [22 x i8] c"serial_cs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"serial_cs\00", [22 x i8] zeroinitializer }, align 32
@serial_ids = internal constant { [155 x %struct.pcmcia_device_id], [1988 x i8] } { [155 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 259, i16 87, i16 33, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 137, i16 4362, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 260, i16 10, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 261, i16 3338, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 261, i16 3594, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 261, i16 -5611, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 265, i16 1281, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 312, i16 4362, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 320, i16 10, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 323, i16 13121, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 323, i16 -16213, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 364, i16 129, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 539, i16 257, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 2209, i16 -16213, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 368, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -183444732, i32 80554376, i32 1185230179, i32 0], [4 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 368, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -183444732, i32 21215091, i32 1185230179, i32 0], [4 x ptr] [ptr @.str.26, ptr @.str.29, ptr @.str.28, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 368, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -183444732, i32 -2056427832, i32 -1116978193, i32 0], [4 x ptr] [ptr @.str.26, ptr @.str.30, ptr @.str.31, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 368, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -183444732, i32 1389501982, i32 -1116978193, i32 0], [4 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.31, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 775874629, i32 0, i32 245987562, i32 0], [4 x ptr] [ptr @.str.33, ptr null, ptr @.str.34, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 775874629, i32 0, i32 -2141155293, i32 0], [4 x ptr] [ptr @.str.33, ptr null, ptr @.str.35, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 775874629, i32 0, i32 -1504656598, i32 0], [4 x ptr] [ptr @.str.33, ptr null, ptr @.str.36, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 775874629, i32 0, i32 1994333481, i32 0], [4 x ptr] [ptr @.str.33, ptr null, ptr @.str.37, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 775874629, i32 0, i32 -247449831, i32 0], [4 x ptr] [ptr @.str.33, ptr null, ptr @.str.38, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 1468770023, i32 -1330879804, i32 0, i32 0], [4 x ptr] [ptr @.str.39, ptr @.str.40, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -1164003358, i32 125572942, i32 0, i32 0], [4 x ptr] [ptr @.str.41, ptr @.str.42, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 440551964, i32 -1304913921, i32 0, i32 0], [4 x ptr] [ptr @.str.43, ptr @.str.44, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -577140290, i32 1714174284, i32 0, i32 0], [4 x ptr] [ptr @.str.45, ptr @.str.46, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 706027436, i32 1220096686, i32 0, i32 0], [4 x ptr] [ptr @.str.47, ptr @.str.48, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 120835201, i32 -1284091853, i32 0, i32 0], [4 x ptr] [ptr @.str.49, ptr @.str.50, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -137688313, i32 2055347032, i32 0, i32 0], [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -183444732, i32 1389501982, i32 0, i32 0], [4 x ptr] [ptr @.str.26, ptr @.str.32, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -1295069083, i32 1022166357, i32 0, i32 0], [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 417270688, i32 -2095378332, i32 0, i32 0], [4 x ptr] [ptr @.str.55, ptr @.str.56, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 204439757, i32 1701398457, i32 0, i32 0], [4 x ptr] [ptr @.str.57, ptr @.str.58, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 204439757, i32 -593779219, i32 0, i32 0], [4 x ptr] [ptr @.str.57, ptr @.str.59, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -587328813, i32 -846657844, i32 0, i32 0], [4 x ptr] [ptr @.str.60, ptr @.str.61, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -587328813, i32 -964926321, i32 0, i32 0], [4 x ptr] [ptr @.str.60, ptr @.str.62, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 514757749, i32 -643220499, i32 0, i32 0], [4 x ptr] [ptr @.str.63, ptr @.str.64, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 775874629, i32 -324795969, i32 0, i32 0], [4 x ptr] [ptr @.str.33, ptr @.str.65, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 50, i16 3585, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 50, i16 2565, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 50, i16 2821, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 50, i16 4353, i8 0, i8 0, i8 1, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 11, i16 260, i16 112, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 11, i16 257, i16 1378, i8 0, i8 1, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 11, i16 260, i16 112, i8 0, i8 1, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 11, i16 364, i16 32, i8 0, i8 1, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 120, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 297982473, i32 1921637469, i32 -1428595169, i32 0], [4 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 -1251367195, i32 1540685612, i32 0, i32 0], [4 x ptr] [ptr @.str.69, ptr @.str.70, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 -1251367195, i32 1272911299, i32 0, i32 0], [4 x ptr] [ptr @.str.69, ptr @.str.71, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 -1251367195, i32 -1366221803, i32 0, i32 0], [4 x ptr] [ptr @.str.69, ptr @.str.72, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 24, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 -264352137, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.73, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 40, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 0, i32 517313282, i32 0, i32 0], [4 x ptr] [ptr null, ptr @.str.74, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 137, i16 769, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 164, i16 630, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 257, i16 57, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 260, i16 6, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 261, i16 257, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 261, i16 4106, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 261, i16 15882, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 261, i16 16650, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 263, i16 2, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 267, i16 3408, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 267, i16 3409, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 267, i16 3410, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 267, i16 3411, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 267, i16 -11904, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 277, i16 13104, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 292, i16 256, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 308, i16 22016, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 311, i16 14, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 311, i16 27, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 311, i16 37, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 311, i16 69, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 311, i16 82, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 364, i16 6, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 512, i16 1, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 208, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1732614455, i32 0, i32 -1855126854, i32 -1883336018], [4 x ptr] [ptr @.str.75, ptr null, ptr @.str.76, ptr @.str.77], i32 0, ptr null }, %struct.pcmcia_device_id { i16 176, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1349242030, i32 -885619215, i32 0, i32 -1116978193], [4 x ptr] [ptr @.str.78, ptr @.str.79, ptr null, ptr @.str.31], i32 0, ptr null }, %struct.pcmcia_device_id { i16 144, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -183444732, i32 0, i32 0, i32 -1116978193], [4 x ptr] [ptr @.str.26, ptr null, ptr null, ptr @.str.31], i32 0, ptr null }, %struct.pcmcia_device_id { i16 176, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1269278182, i32 1920024732, i32 0, i32 -1116978193], [4 x ptr] [ptr @.str.80, ptr @.str.81, ptr null, ptr @.str.31], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1860543448, i32 820695339, i32 -1341192800, i32 0], [4 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 845182838, i32 -639157485, i32 243741486, i32 0], [4 x ptr] [ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -183444732, i32 0, i32 -1154691510, i32 0], [4 x ptr] [ptr @.str.26, ptr null, ptr @.str.88, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -300711038, i32 -724657406, i32 0, i32 0], [4 x ptr] [ptr @.str.89, ptr @.str.90, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -433720239, i32 -825397766, i32 0, i32 0], [4 x ptr] [ptr @.str.91, ptr @.str.92, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1549597140, i32 -1933738890, i32 0, i32 0], [4 x ptr] [ptr @.str.93, ptr @.str.94, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1549597140, i32 1510002325, i32 0, i32 0], [4 x ptr] [ptr @.str.93, ptr @.str.95, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -793276591, i32 2116897261, i32 0, i32 0], [4 x ptr] [ptr @.str.96, ptr @.str.97, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1989421075, i32 -1953051035, i32 0, i32 0], [4 x ptr] [ptr @.str.98, ptr @.str.99, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1251367195, i32 -18536069, i32 0, i32 0], [4 x ptr] [ptr @.str.69, ptr @.str.100, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1265179042, i32 -216661338, i32 0, i32 0], [4 x ptr] [ptr @.str.101, ptr @.str.102, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2123577323, i32 1093085691, i32 0, i32 0], [4 x ptr] [ptr @.str.103, ptr @.str.104, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -123693085, i32 -1752693689, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.106, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1003673752, i32 -1834235601, i32 0, i32 0], [4 x ptr] [ptr @.str.107, ptr @.str.108, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1719896243, i32 1067179823, i32 0, i32 0], [4 x ptr] [ptr @.str.109, ptr @.str.110, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1601420881, i32 188621699, i32 0, i32 0], [4 x ptr] [ptr @.str.111, ptr @.str.112, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1601420881, i32 1289207966, i32 0, i32 0], [4 x ptr] [ptr @.str.111, ptr @.str.113, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1250765984, i32 -768058502, i32 0, i32 0], [4 x ptr] [ptr @.str.114, ptr @.str.115, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1652762891, i32 1555611457, i32 0, i32 0], [4 x ptr] [ptr @.str.116, ptr @.str.117, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1652762891, i32 -1304935254, i32 0, i32 0], [4 x ptr] [ptr @.str.116, ptr @.str.118, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1715687447, i32 -1440367445, i32 0, i32 0], [4 x ptr] [ptr @.str.119, ptr @.str.120, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1002304715, i32 -1834235601, i32 0, i32 0], [4 x ptr] [ptr @.str.121, ptr @.str.108, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1002304715, i32 52049933, i32 0, i32 0], [4 x ptr] [ptr @.str.121, ptr @.str.122, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 237821278, i32 -919516360, i32 0, i32 0], [4 x ptr] [ptr @.str.123, ptr @.str.124, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 764207762, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.125, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 673127517, i32 1460614286, i32 0, i32 0], [4 x ptr] [ptr @.str.126, ptr @.str.127, ptr null, ptr null], i32 0, ptr @.str.128 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 673127517, i32 1876733166, i32 0, i32 0], [4 x ptr] [ptr @.str.126, ptr @.str.129, ptr null, ptr null], i32 0, ptr @.str.128 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -168811070, i32 864977237, i32 0, i32 0], [4 x ptr] [ptr @.str.130, ptr @.str.131, ptr null, ptr null], i32 0, ptr @.str.128 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -168811070, i32 1256742197, i32 0, i32 0], [4 x ptr] [ptr @.str.130, ptr @.str.132, ptr null, ptr null], i32 0, ptr @.str.128 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -137688313, i32 1720195188, i32 0, i32 0], [4 x ptr] [ptr @.str.51, ptr @.str.133, ptr null, ptr null], i32 0, ptr @.str.128 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 1, [4 x i32] [i32 -1269278182, i32 1408836344, i32 0, i32 0], [4 x ptr] [ptr @.str.80, ptr @.str.134, ptr null, ptr null], i32 0, ptr @.str.128 }, %struct.pcmcia_device_id { i16 568, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 -1881174135, i32 -580986392, i32 0, i32 0], [4 x ptr] [ptr @.str.135, ptr @.str.136, ptr null, ptr null], i32 0, ptr @.str.137 }, %struct.pcmcia_device_id { i16 648, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 0, i32 0, i32 0, i32 1492934742], [4 x ptr] [ptr null, ptr null, ptr null, ptr @.str.138], i32 0, ptr @.str.137 }, %struct.pcmcia_device_id { i16 523, i16 257, i16 1366, i8 0, i8 1, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.139 }, %struct.pcmcia_device_id { i16 523, i16 373, i16 0, i8 0, i8 1, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.137 }, %struct.pcmcia_device_id { i16 523, i16 257, i16 53, i8 0, i8 1, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.140 }, %struct.pcmcia_device_id { i16 523, i16 257, i16 61, i8 0, i8 1, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.140 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -664837626, i32 1117962264, i32 0, i32 0], [4 x ptr] [ptr @.str.141, ptr @.str.142, ptr null, ptr null], i32 0, ptr @.str.143 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -664837626, i32 1771017179, i32 0, i32 0], [4 x ptr] [ptr @.str.141, ptr @.str.144, ptr null, ptr null], i32 0, ptr @.str.143 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -664837626, i32 1981485536, i32 0, i32 0], [4 x ptr] [ptr @.str.141, ptr @.str.145, ptr null, ptr null], i32 0, ptr @.str.146 }, %struct.pcmcia_device_id { i16 515, i16 402, i16 -23211, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.147 }, %struct.pcmcia_device_id { i16 515, i16 319, i16 -23211, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.147 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2078259218, i32 -1024471293, i32 0, i32 0], [4 x ptr] [ptr @.str.148, ptr @.str.149, ptr null, ptr null], i32 0, ptr @.str.150 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1768867195, i32 665539639, i32 0, i32 0], [4 x ptr] [ptr @.str.151, ptr @.str.152, ptr null, ptr null], i32 0, ptr @.str.153 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1768867195, i32 -825691902, i32 0, i32 0], [4 x ptr] [ptr @.str.151, ptr @.str.154, ptr null, ptr null], i32 0, ptr @.str.155 }, %struct.pcmcia_device_id { i16 624, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1768867195, i32 -1883336018, i32 142063143, i32 0], [4 x ptr] [ptr @.str.151, ptr @.str.77, ptr @.str.156, ptr null], i32 0, ptr @.str.153 }, %struct.pcmcia_device_id { i16 544, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 0, i32 -1390366378, i32 0, i32 0], [4 x ptr] [ptr null, ptr @.str.157, ptr null, ptr null], i32 0, ptr @.str.158 }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 432699567, i32 -110824405, i32 0, i32 0], [4 x ptr] [ptr @.str.159, ptr @.str.160, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 432699567, i32 1910083203, i32 0, i32 0], [4 x ptr] [ptr @.str.159, ptr @.str.161, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 432699567, i32 1778087056, i32 0, i32 0], [4 x ptr] [ptr @.str.159, ptr @.str.162, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 432699567, i32 -1229192651, i32 0, i32 0], [4 x ptr] [ptr @.str.159, ptr @.str.163, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1676861629, i32 -1176406573, i32 0, i32 0], [4 x ptr] [ptr @.str.164, ptr @.str.165, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1676861629, i32 -52218814, i32 0, i32 0], [4 x ptr] [ptr @.str.164, ptr @.str.166, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 387871120, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.168, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 551174754, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.169, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 -362949251, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.170, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 -680372742, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.171, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 1785764099, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.172, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 407045750, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.173, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 1871918951, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.174, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 383523751, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.175, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 427912257, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.176, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 1678843945, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.177, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 483293892, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.178, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1005292786, i32 -610379588, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.179, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 1005292786, i32 383523751, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.175, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 1005292786, i32 427912257, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.176, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 1005292786, i32 1678843945, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.177, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 1, i8 0, [4 x i32] [i32 1005292786, i32 483293892, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.178, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 2, i8 0, [4 x i32] [i32 1005292786, i32 483293892, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.178, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 3, i8 0, [4 x i32] [i32 1005292786, i32 483293892, i32 0, i32 0], [4 x ptr] [ptr @.str.167, ptr @.str.178, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 633, i16 -27381, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 4, i16 0, i16 0, i8 2, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [1988 x i8] zeroinitializer }, align 32
@serial_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serial_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/tty/serial/8250/serial_cs.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serial_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@serial_config.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_config\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_config\0A\00", [17 x i8] zeroinitializer }, align 32
@quirks = internal constant { [15 x %struct.serial_quirk], [124 x i8] } { [15 x %struct.serial_quirk] [%struct.serial_quirk { i32 352, i32 260, i32 -1, ptr null, ptr @quirk_setup_brainboxes_0104, ptr null, ptr null }, %struct.serial_quirk { i32 349, i32 19525, i32 -1, ptr null, ptr @quirk_setup_brainboxes_0104, ptr null, ptr null }, %struct.serial_quirk { i32 164, i32 -1, i32 -1, ptr null, ptr null, ptr null, ptr @quirk_post_ibm }, %struct.serial_quirk { i32 137, i32 769, i32 2, ptr null, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 267, i32 53632, i32 4, ptr null, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 292, i32 -1, i32 -1, ptr @quirk_config_nokia, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 311, i32 37, i32 4, ptr null, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 633, i32 -1, i32 -1, ptr null, ptr null, ptr @quirk_wakeup_oxsemi, ptr null }, %struct.serial_quirk { i32 780, i32 3, i32 -1, ptr null, ptr null, ptr @quirk_wakeup_possio_gcc, ptr null }, %struct.serial_quirk { i32 311, i32 18, i32 2, ptr null, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 311, i32 7, i32 2, ptr null, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 311, i32 77, i32 2, ptr null, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 311, i32 27, i32 4, ptr null, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 260, i32 6, i32 2, ptr @quirk_config_socket, ptr null, ptr null, ptr null }, %struct.serial_quirk { i32 260, i32 -1, i32 -1, ptr @quirk_config_socket, ptr null, ptr null, ptr null }], [124 x i8] zeroinitializer }, align 32
@serial_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 661, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"trying to set up [0x%04x:0x%04x] (pfc: %d, multi: %d, quirk: %p)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serial_config._entry_ptr = internal global ptr @serial_config._entry, section ".printk_index", align 4
@serial_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 683, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to initialize\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@serial_config._entry_ptr.12 = internal global ptr @serial_config._entry.9, section ".printk_index", align 4
@pfc_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 402, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"no usable port range found, giving up\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pfc_config\00", [21 x i8] zeroinitializer }, align 32
@pfc_config._entry_ptr = internal global ptr @pfc_config._entry, section ".printk_index", align 4
@setup_serial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013serial_cs: serial8250_register_8250_port() at 0x%04lx, irq %d failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"setup_serial\00", [19 x i8] zeroinitializer }, align 32
@setup_serial._entry_ptr = internal global ptr @setup_serial._entry, section ".printk_index", align 4
@multi_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.17, ptr @.str.2, i32 547, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"multi_config\00", [19 x i8] zeroinitializer }, align 32
@multi_config._entry_ptr = internal global ptr @multi_config._entry, section ".printk_index", align 4
@multi_config._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 553, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no usable IRQ found, continuing...\0A\00", [60 x i8] zeroinitializer }, align 32
@multi_config._entry_ptr.20 = internal global ptr @multi_config._entry.18, section ".printk_index", align 4
@simple_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.2, i32 470, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"simple_config\00", [18 x i8] zeroinitializer }, align 32
@simple_config._entry_ptr = internal global ptr @simple_config._entry, section ".printk_index", align 4
@simple_config_check.size_table = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 16], [24 x i8] zeroinitializer }, align 32
@serial_remove.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_release\0A\00", [16 x i8] zeroinitializer }, align 32
@serial_detach.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_detach\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_detach\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MEGAHERTZ\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CC/XJEM3288\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DATA/FAX/CELL ETHERNET MODEM\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CC/XJEM3336\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EM1144T\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCMCIA MODEM\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"XJEM1144/CCEM1144\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Xircom\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CEM28\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CEM33\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CEM56\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"REM10\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XEM5600\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AnyCom\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fast Ethernet + 56K COMBO\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATKK\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LM33-PCM-T\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D-Link\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DME336T\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Gateway 2000\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XJEM3336\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Grey Cell\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GCS3000\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Linksys\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"EtherFast 10&100 + 56K PC Card (PCMLM56)\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINKSYS\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCMLM336\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MICRO RESEARCH\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"COMBO-L/M-336\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEC\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PK-UG-J001\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Ositech\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Trumpcard:Jack of Diamonds Modem+Ethernet\00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Trumpcard:Jack of Hearts Modem+Ethernet\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCMCIAs\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ComboCard\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LanModem\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDK\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GlobalNetworker 3410/3412\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CreditCard Ethernet+Modem II\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APEX DATA\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MULTICARD\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ETHERNET-MODEM\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IBM\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Home and Away 28.8 PC Card       \00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Home and Away Credit Card Adapter\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"w95 Home and Away Credit Card \00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Motorola MARQUIS\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FAX/Modem/Ethernet Combo Card \00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADV\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TECH\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"COMpad-32/85\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GATEWAY2000\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CC3144\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TOSHIBA\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"T144PF\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FUJITSU\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FC14F \00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MBH10213\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Novatel Wireless\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Merlin UMTS Modem\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"U630\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"V.34 PCMCIA MODEM\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Brain Boxes\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bluetooth PC Card\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CIRRUS LOGIC\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FAX MODEM\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COMPAQ\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCMCIA 28800 FAX/DATA MODEM\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCMCIA 33600 FAX/DATA MODEM\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Computerboards, Inc.\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCM-COM422\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dr. Neuhaus\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FURY CARD 14K4\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ISDN/56K/GSM\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intelligent\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ANGIA FAX/MODEM\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Intel\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODEM 2400+\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Intertex\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IX34-PCMCIA\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IOTech Inc \00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCMCIA Dual RS-232 Serial Port Card\00", [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MACRONIX\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FAX/MODEM\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Multi-Tech\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MT1432LT\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MT2834LT\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OEM      \00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"C288MX     \00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Option International\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"V34bis GSM/PSTN Data/Fax Modem\00", [33 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GSM-Ready 56K/ISDN\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCMCIA   \00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"C336MX     \00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quatech Inc\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dual RS-232 Serial Port PC Card\00", [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Telia\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SurfinBird 560P/A+\00", [45 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Smart Serial Port\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCMCIA\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EN2218-LAN/MODEM\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cis/PCMLM28.cis\00", [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UE2218-LAN/MODEM\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Psion Dacom\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Gold Card V34 Ethernet\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Gold Card V34 Ethernet GSM\00", [37 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCMLM28\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Modem/LAN Card\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAYNA COMMUNICATIONS\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LAN AND MODEM MULTIFUNCTION\00", [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cis/DP83903.cis\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NSC MF LAN/Modem\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cis/3CCFEM556.cis\00", [46 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cis/3CXEM556.cis\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sierra Wireless\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AC850\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cis/SW_8xx_SER.cis\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AC860\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AC710/AC750\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cis/SW_7xx_SER.cis\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cis/SW_555_SER.cis\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MultiTech\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCMCIA 56K DataFax\00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cis/MT5634ZLX.cis\00", [46 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADVANTECH\00", [22 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"COMpad-32/85B-2\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cis/COMpad2.cis\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"COMpad-32/85B-4\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cis/COMpad4.cis\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RS-COM 2P\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cis/RS-COM-2P.cis\00", [46 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ELAN DIGITAL SYSTEMS LTD, c1997.\00", [63 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SERIAL CARD: SL100  1.00.\00", [38 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SERIAL CARD: SL100\00", [45 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SERIAL CARD: SL232  1.00.\00", [38 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SERIAL CARD: SL232\00", [45 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ELAN DIGITAL SYSTEMS LTD, c2000.\00", [63 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SERIAL CARD: CF232\00", [45 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SERIAL CARD: CF232-5\00", [43 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Elan\00", [27 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: CF232\00", [45 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Serial Port: CF232-5\00", [43 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: CF428\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: CF500\00", [45 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: IC232\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: SL232\00", [45 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: XL232\00", [45 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: CF332\00", [45 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: SL332\00", [45 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: SL385\00", [45 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Port: SL432\00", [45 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial+Parallel Port: SP230\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 633, i64 780]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.182 = private unnamed_addr constant [9 x i8] c"do_sound\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 60, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"buggy_uart\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 62, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"serial_cs_driver\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 862, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 864, i32 11 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"serial_ids\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 688, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 311, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 621, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 188, i32 34 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 658, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 683, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 402, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 372, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 546, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 553, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 470, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [11 x i8] c"size_table\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 408, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 269, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 339, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 703, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 704, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 705, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 706, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 707, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 708, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 709, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 710, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 711, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 712, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 713, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 714, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 715, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 716, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 717, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 718, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 720, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 721, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 722, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 723, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 724, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 725, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 726, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 727, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 736, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 737, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 738, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 739, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 740, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 741, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 766, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 767, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 769, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 770, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 771, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 772, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 773, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 774, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 775, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 776, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 777, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 778, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 779, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 780, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 781, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 782, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 783, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 784, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 785, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 786, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 787, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 788, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 789, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 790, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 791, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 792, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 793, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 794, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 795, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 796, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 797, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 798, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 799, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 800, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 801, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 802, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 803, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 805, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 807, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 808, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 809, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 810, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 812, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 813, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 814, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 815, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 816, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 817, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 818, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 819, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 820, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 821, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 822, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 823, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 824, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 825, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 826, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 827, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 828, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 829, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 830, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 831, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 832, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 833, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.747 = private constant [39 x i8] c"../drivers/tty/serial/8250/serial_cs.c\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 834, i32 2 }
@llvm.compiler.used = appending global [216 x ptr] [ptr @__UNIQUE_ID_buggy_uarttype243, ptr @__UNIQUE_ID_do_soundtype242, ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_firmware248, ptr @__UNIQUE_ID_firmware249, ptr @__UNIQUE_ID_firmware250, ptr @__UNIQUE_ID_firmware251, ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_license261, ptr @__exitcall_serial_cs_driver_exit, ptr @__initcall__kmod_serial_cs__259_871_serial_cs_driver_init6, ptr @__param_buggy_uart, ptr @__param_do_sound, ptr @multi_config._entry, ptr @multi_config._entry.18, ptr @multi_config._entry_ptr, ptr @multi_config._entry_ptr.20, ptr @pfc_config._entry, ptr @pfc_config._entry_ptr, ptr @serial_config._entry, ptr @serial_config._entry.9, ptr @serial_config._entry_ptr, ptr @serial_config._entry_ptr.12, ptr @serial_cs_driver_exit, ptr @setup_serial._entry, ptr @setup_serial._entry_ptr, ptr @simple_config._entry, ptr @simple_config._entry_ptr, ptr @do_sound, ptr @buggy_uart, ptr @serial_cs_driver, ptr @.str, ptr @serial_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @quirks, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @simple_config_check.size_table, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], section "llvm.metadata"
@0 = internal global [189 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_sound to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buggy_uart to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ids to i32), i32 8060, i32 10048, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirks to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfc_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_serial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_config._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_config_check.size_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_cs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @serial_cs_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serial_cs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @serial_cs_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !360

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %3 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config_flags, align 4
  %or = or i32 %4, 2049
  store i32 %or, ptr %config_flags, align 4
  %5 = load i32, ptr @do_sound, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %or10 = or i32 %4, 2051
  %6 = ptrtoint ptr %config_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or10, ptr %config_flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %call12 = tail call fastcc i32 @serial_config(ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %free_info

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

free_info:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_info, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %free_info ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_detach.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_detach, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !360

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_detach.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_remove.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_detach, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !360

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_remove.__UNIQUE_ID_ddebug244, ptr noundef %dev.i, ptr noundef nonnull @.str.23) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %ndev.i = getelementptr inbounds %struct.serial_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.i = icmp sgt i32 %5, 0
  br i1 %cmp13.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.for.end.i_crit_edge

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.serial_info, ptr %3, i32 0, i32 7, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  tail call void @serial8250_unregister_port(i32 noundef %7) #8
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %8 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndev.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %slave.i = getelementptr inbounds %struct.serial_info, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slave.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %for.end.i.serial_remove.exit_crit_edge

for.end.i.serial_remove.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %serial_remove.exit

if.then4.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pcmcia_disable_device(ptr noundef %link) #8
  br label %serial_remove.exit

serial_remove.exit:                               ; preds = %if.then4.i, %for.end.i.serial_remove.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ndev = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.serial_info, ptr %1, i32 0, i32 7, i32 %i.05
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @serial8250_suspend_port(i32 noundef %5) #8
  %inc = add nuw nsw i32 %i.05, 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndev, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_resume(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ndev = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13 = icmp sgt i32 %3, 0
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.serial_info, ptr %1, i32 0, i32 7, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @serial8250_resume_port(i32 noundef %5) #8
  %inc = add nuw nsw i32 %i.014, 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndev, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %quirk = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %quirk, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %land.lhs.true

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %wakeup = getelementptr inbounds %struct.serial_quirk, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wakeup, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %link) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serial_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %uart.i.i206 = alloca %struct.uart_8250_port, align 4
  %try.i = alloca i32, align 4
  %uart.i168.i = alloca %struct.uart_8250_port, align 4
  %uart.i141.i = alloca %struct.uart_8250_port, align 4
  %uart.i114.i = alloca %struct.uart_8250_port, align 4
  %uart.i.i169 = alloca %struct.uart_8250_port, align 4
  %base2.i = alloca i32, align 4
  %uart.i.i = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_config.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_config, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !360

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_config.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 8
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %functions, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp ugt i16 %5, 1
  %conv3 = zext i1 %cmp to i32
  %multi = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv3, ptr %multi, align 4
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %7 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %manf_id, align 4
  %conv4 = zext i16 %8 to i32
  %manfid = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %manfid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %manfid, align 4
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %10 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %card_id, align 2
  %conv5 = zext i16 %11 to i32
  %prodid = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %prodid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv5, ptr %prodid, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.0264 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [15 x %struct.serial_quirk], ptr @quirks, i32 0, i32 %i.0264
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp9 = icmp eq i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv4)
  %cmp14 = icmp eq i32 %14, %conv4
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp14
  br i1 %or.cond, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %15 = lshr i32 16548, %i.0264
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp18.not = icmp eq i32 %16, 0
  br i1 %cmp18.not, label %lor.lhs.false20, label %land.lhs.true.if.then26_crit_edge

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %prodid17 = getelementptr [15 x %struct.serial_quirk], ptr @quirks, i32 0, i32 %i.0264, i32 1
  %17 = ptrtoint ptr %prodid17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prodid17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv5)
  %cmp24 = icmp eq i32 %18, %conv5
  br i1 %cmp24, label %lor.lhs.false20.if.then26_crit_edge, label %lor.lhs.false20.for.inc_crit_edge

lor.lhs.false20.for.inc_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false20.if.then26_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false20.if.then26_crit_edge, %land.lhs.true.if.then26_crit_edge
  %quirk = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %quirk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx, ptr %quirk, align 4
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false20.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0264, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then26
  %20 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp30 = icmp eq i32 %21, 0
  br i1 %cmp30, label %land.lhs.true32, label %for.end.if.end54_crit_edge

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true32:                                  ; preds = %for.end
  %has_func_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 15
  %22 = ptrtoint ptr %has_func_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %has_func_id, align 8
  %23 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool34.not = icmp eq i16 %23, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end54_crit_edge, label %land.lhs.true35

land.lhs.true32.if.end54_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %24 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link, align 8
  %pcmcia_pfc = getelementptr inbounds %struct.pcmcia_socket, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %pcmcia_pfc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pcmcia_pfc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp38 = icmp eq i8 %27, 0
  br i1 %cmp38, label %land.lhs.true40, label %land.lhs.true35.if.end54_crit_edge

land.lhs.true35.if.end54_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %func_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 16
  %28 = ptrtoint ptr %func_id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %func_id, align 2
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %29, label %land.lhs.true40.if.end54_crit_edge [
    i8 0, label %land.lhs.true40.if.then49_crit_edge
    i8 2, label %land.lhs.true40.if.then49_crit_edge271
  ]

land.lhs.true40.if.then49_crit_edge271:           ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

land.lhs.true40.if.then49_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

land.lhs.true40.if.end54_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then49:                                        ; preds = %land.lhs.true40.if.then49_crit_edge, %land.lhs.true40.if.then49_crit_edge271
  %call50 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @serial_check_for_multi, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end54_crit_edge, label %if.then49.do.end115_crit_edge

if.then49.do.end115_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115

if.then49.if.end54_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %if.then49.if.end54_crit_edge, %land.lhs.true40.if.end54_crit_edge, %land.lhs.true35.if.end54_crit_edge, %land.lhs.true32.if.end54_crit_edge, %for.end.if.end54_crit_edge
  %quirk55 = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %quirk55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %quirk55, align 4
  %tobool56.not = icmp eq ptr %32, null
  br i1 %tobool56.not, label %if.end54.do.end69_crit_edge, label %land.lhs.true57

if.end54.do.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

land.lhs.true57:                                  ; preds = %if.end54
  %multi59 = getelementptr inbounds %struct.serial_quirk, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %multi59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %multi59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp60.not = icmp eq i32 %34, -1
  br i1 %cmp60.not, label %land.lhs.true57.do.end69_crit_edge, label %if.then62

land.lhs.true57.do.end69_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

if.then62:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %multi, align 4
  br label %do.end69

do.end69:                                         ; preds = %if.then62, %land.lhs.true57.do.end69_crit_edge, %if.end54.do.end69_crit_edge
  %dev70 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %36 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %manf_id, align 4
  %conv72 = zext i16 %37 to i32
  %38 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %card_id, align 2
  %conv74 = zext i16 %39 to i32
  %40 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link, align 8
  %pcmcia_pfc76 = getelementptr inbounds %struct.pcmcia_socket, ptr %41, i32 0, i32 39
  %42 = ptrtoint ptr %pcmcia_pfc76 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pcmcia_pfc76, align 1
  %conv77 = zext i8 %43 to i32
  %44 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %multi, align 4
  %46 = ptrtoint ptr %quirk55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %quirk55, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev70, ptr noundef nonnull @.str.6, i32 noundef %conv72, i32 noundef %conv74, i32 noundef %conv77, i32 noundef %45, ptr noundef %47) #12
  %48 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %link, align 8
  %pcmcia_pfc81 = getelementptr inbounds %struct.pcmcia_socket, ptr %49, i32 0, i32 39
  %50 = ptrtoint ptr %pcmcia_pfc81 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pcmcia_pfc81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool82.not = icmp eq i8 %51, 0
  br i1 %tobool82.not, label %if.else, label %if.then83

if.then83:                                        ; preds = %do.end69
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not.i = icmp eq i32 %57, 0
  br i1 %cmp.not.i, label %if.then83.if.else.i_crit_edge, label %land.lhs.true.i

if.then83.if.else.i_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then83
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %55, align 4
  %sub.i.i = add i32 %57, 1
  %add.i.i = sub i32 %sub.i.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i.i)
  %cmp3.i = icmp eq i32 %add.i.i, 8
  br i1 %cmp3.i, label %land.lhs.true.i.if.end17.sink.split.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i.if.end17.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then83.if.else.i_crit_edge
  %manfid.i = getelementptr inbounds %struct.serial_info, ptr %53, i32 0, i32 4
  %60 = ptrtoint ptr %manfid.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %manfid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %61)
  %cmp6.i = icmp eq i32 %61, 320
  br i1 %cmp6.i, label %land.lhs.true7.i, label %if.else.i.if.end17.i_crit_edge

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true7.i:                                 ; preds = %if.else.i
  %62 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %resource.i, align 4
  %end.i35.i = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %end.i35.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %end.i35.i, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %63, align 4
  %sub.i36.i = add i32 %65, 1
  %add.i37.i = sub i32 %sub.i36.i, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i37.i)
  %cmp11.i = icmp eq i32 %add.i37.i, 64
  br i1 %cmp11.i, label %if.then12.i, label %land.lhs.true7.i.if.end17.i_crit_edge

land.lhs.true7.i.if.end17.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then12.i:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %67, 40
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.then12.i, %land.lhs.true.i.if.end17.sink.split.i_crit_edge
  %port.0.ph.i = phi i32 [ %add.i, %if.then12.i ], [ %59, %land.lhs.true.i.if.end17.sink.split.i_crit_edge ]
  %slave16.i = getelementptr inbounds %struct.serial_info, ptr %53, i32 0, i32 3
  %68 = ptrtoint ptr %slave16.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %slave16.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17.sink.split.i, %land.lhs.true7.i.if.end17.i_crit_edge, %if.else.i.if.end17.i_crit_edge
  %port.0.i = phi i32 [ 0, %land.lhs.true7.i.if.end17.i_crit_edge ], [ 0, %if.else.i.if.end17.i_crit_edge ], [ %port.0.ph.i, %if.end17.sink.split.i ]
  %slave18.i = getelementptr inbounds %struct.serial_info, ptr %53, i32 0, i32 3
  %69 = ptrtoint ptr %slave18.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %slave18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %if.end93.thread, label %if.then19.i

if.then19.i:                                      ; preds = %if.end17.i
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %71 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq.i, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart.i.i) #8
  %73 = call ptr @memset(ptr %uart.i.i, i32 0, i32 584)
  %iobase1.i.i = getelementptr inbounds %struct.uart_port, ptr %uart.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %port.0.i, ptr %iobase1.i.i, align 4
  %irq3.i.i = getelementptr inbounds %struct.uart_port, ptr %uart.i.i, i32 0, i32 20
  %75 = ptrtoint ptr %irq3.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %irq3.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %uart.i.i, i32 0, i32 33
  %76 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 285212736, ptr %flags.i.i, align 4
  %uartclk.i.i = getelementptr inbounds %struct.uart_port, ptr %uart.i.i, i32 0, i32 22
  %77 = ptrtoint ptr %uartclk.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1843200, ptr %uartclk.i.i, align 4
  %dev7.i.i = getelementptr inbounds %struct.uart_port, ptr %uart.i.i, i32 0, i32 45
  %78 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %dev70, ptr %dev7.i.i, align 4
  %79 = load i32, ptr @buggy_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i, label %if.then19.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then19.i.if.end.i.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 285229120, ptr %flags.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then19.i.if.end.i.i_crit_edge
  %quirk.i.i = getelementptr inbounds %struct.serial_info, ptr %53, i32 0, i32 8
  %81 = ptrtoint ptr %quirk.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %quirk.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %82, null
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end16.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %setup.i.i = getelementptr inbounds %struct.serial_quirk, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %setup.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %84, null
  br i1 %tobool12.not.i.i, label %land.lhs.true.i.i.if.end16.i.i_crit_edge, label %if.then13.i.i

land.lhs.true.i.i.if.end16.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %84(ptr noundef %link, ptr noundef nonnull %uart.i.i) #8
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then13.i.i, %land.lhs.true.i.i.if.end16.i.i_crit_edge, %if.end.i.i.if.end16.i.i_crit_edge
  %call.i.i = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end19.i.i

do.end.i.i:                                       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %port.0.i, i32 noundef %72) #12
  br label %setup_serial.exit.i

if.end19.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i.i = getelementptr inbounds %struct.serial_info, ptr %53, i32 0, i32 1
  %85 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ndev.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.serial_info, ptr %53, i32 0, i32 7, i32 %86
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call.i.i, ptr %arrayidx.i.i, align 4
  %88 = load i32, ptr %ndev.i.i, align 4
  %inc.i.i = add i32 %88, 1
  store i32 %inc.i.i, ptr %ndev.i.i, align 4
  br label %setup_serial.exit.i

setup_serial.exit.i:                              ; preds = %if.end19.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ 0, %if.end19.i.i ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart.i.i) #8
  br label %if.end93

if.end93.thread:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev70, ptr noundef nonnull @.str.13) #12
  br label %do.end115

if.else:                                          ; preds = %do.end69
  %89 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp86 = icmp sgt i32 %90, 1
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  br i1 %cmp86, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base2.i) #8
  %93 = ptrtoint ptr %base2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %base2.i, align 4
  %multi.i = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 2
  %call.i = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @multi_config_check, ptr noundef %multi.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i171 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i171, label %if.then.i, label %if.else.i174

if.then.i:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  %resource.i172 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %94 = ptrtoint ptr %resource.i172 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %resource.i172, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %add.i173 = add i32 %97, 8
  %98 = ptrtoint ptr %base2.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add.i173, ptr %base2.i, align 4
  br label %if.end5.i

if.else.i174:                                     ; preds = %if.then88
  %99 = ptrtoint ptr %multi.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %multi.i, align 4
  %call2.i = call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @multi_config_check_notpicky, ptr noundef nonnull %base2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.else.i174.if.end5.i_crit_edge, label %do.end.i176

if.else.i174.if.end5.i_crit_edge:                 ; preds = %if.else.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

do.end.i176:                                      ; preds = %if.else.i174
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev70, ptr noundef nonnull @.str.13) #12
  br label %multi_config.exit

if.end5.i:                                        ; preds = %if.else.i174.if.end5.i_crit_edge, %if.then.i
  %irq.i177 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %100 = ptrtoint ptr %irq.i177 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq.i177, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool6.not.i = icmp eq i32 %101, 0
  br i1 %tobool6.not.i, label %do.end10.i, label %if.end5.i.if.end12.i_crit_edge

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

do.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev70, ptr noundef nonnull @.str.19) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end10.i, %if.end5.i.if.end12.i_crit_edge
  %quirk.i = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 8
  %102 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %quirk.i, align 4
  %tobool13.not.i = icmp eq ptr %103, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end19.i_crit_edge, label %land.lhs.true.i178

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

land.lhs.true.i178:                               ; preds = %if.end12.i
  %config.i = getelementptr inbounds %struct.serial_quirk, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config.i, align 4
  %tobool15.not.i = icmp eq ptr %105, null
  br i1 %tobool15.not.i, label %land.lhs.true.i178.if.end19.i_crit_edge, label %if.then16.i

land.lhs.true.i178.if.end19.i_crit_edge:          ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then16.i:                                      ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #10
  call void %105(ptr noundef %link) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true.i178.if.end19.i_crit_edge, %if.end12.i.if.end19.i_crit_edge
  %call20.i = call i32 @pcmcia_enable_device(ptr noundef %link) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp.not.i179 = icmp eq i32 %call20.i, 0
  br i1 %cmp.not.i179, label %if.end22.i, label %if.end19.i.multi_config.exit_crit_edge

if.end19.i.multi_config.exit_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %multi_config.exit

if.end22.i:                                       ; preds = %if.end19.i
  %manfid.i180 = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 4
  %106 = ptrtoint ptr %manfid.i180 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %manfid.i180, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %107, label %if.end22.i.if.end55.i_crit_edge [
    i32 633, label %if.end22.i.if.then28.i_crit_edge
    i32 780, label %land.lhs.true26.i
  ]

if.end22.i.if.then28.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

if.end22.i.if.end55.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

land.lhs.true26.i:                                ; preds = %if.end22.i
  %prodid.i = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 5
  %109 = ptrtoint ptr %prodid.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %prodid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %110)
  %cmp27.i = icmp eq i32 %110, 3
  br i1 %cmp27.i, label %land.lhs.true26.i.if.then28.i_crit_edge, label %land.lhs.true26.i.if.end55.i_crit_edge

land.lhs.true26.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

land.lhs.true26.i.if.then28.i_crit_edge:          ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

if.then28.i:                                      ; preds = %land.lhs.true26.i.if.then28.i_crit_edge, %if.end22.i.if.then28.i_crit_edge
  %config_index.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %111 = ptrtoint ptr %config_index.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %config_index.i, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %112, label %if.else39.i [
    i32 1, label %if.then28.i.if.then33.i_crit_edge
    i32 3, label %if.then28.i.if.then33.i_crit_edge272
  ]

if.then28.i.if.then33.i_crit_edge272:             ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33.i

if.then28.i.if.then33.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.then28.i.if.then33.i_crit_edge, %if.then28.i.if.then33.i_crit_edge272
  %114 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %base2.i, align 4
  %116 = ptrtoint ptr %irq.i177 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %irq.i177, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart.i.i169) #8
  %118 = call ptr @memset(ptr %uart.i.i169, i32 0, i32 584)
  %iobase1.i.i181 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i169, i32 0, i32 1
  %119 = ptrtoint ptr %iobase1.i.i181 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %115, ptr %iobase1.i.i181, align 4
  %irq3.i.i182 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i169, i32 0, i32 20
  %120 = ptrtoint ptr %irq3.i.i182 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %117, ptr %irq3.i.i182, align 4
  %flags.i.i183 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i169, i32 0, i32 33
  %121 = ptrtoint ptr %flags.i.i183 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 285212736, ptr %flags.i.i183, align 4
  %uartclk.i.i184 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i169, i32 0, i32 22
  %122 = ptrtoint ptr %uartclk.i.i184 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1843200, ptr %uartclk.i.i184, align 4
  %dev7.i.i186 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i169, i32 0, i32 45
  %123 = ptrtoint ptr %dev7.i.i186 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %dev70, ptr %dev7.i.i186, align 4
  %124 = load i32, ptr @buggy_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i.i187 = icmp eq i32 %124, 0
  br i1 %tobool.not.i.i187, label %if.then33.i.if.end.i.i190_crit_edge, label %if.then.i.i188

if.then33.i.if.end.i.i190_crit_edge:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i190

if.then.i.i188:                                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %flags.i.i183 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 285229120, ptr %flags.i.i183, align 4
  br label %if.end.i.i190

if.end.i.i190:                                    ; preds = %if.then.i.i188, %if.then33.i.if.end.i.i190_crit_edge
  %126 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %quirk.i, align 4
  %tobool10.not.i.i189 = icmp eq ptr %127, null
  br i1 %tobool10.not.i.i189, label %if.end.i.i190.if.end16.i.i197_crit_edge, label %land.lhs.true.i.i193

if.end.i.i190.if.end16.i.i197_crit_edge:          ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i197

land.lhs.true.i.i193:                             ; preds = %if.end.i.i190
  %setup.i.i191 = getelementptr inbounds %struct.serial_quirk, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %setup.i.i191 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %setup.i.i191, align 4
  %tobool12.not.i.i192 = icmp eq ptr %129, null
  br i1 %tobool12.not.i.i192, label %land.lhs.true.i.i193.if.end16.i.i197_crit_edge, label %if.then13.i.i194

land.lhs.true.i.i193.if.end16.i.i197_crit_edge:   ; preds = %land.lhs.true.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i197

if.then13.i.i194:                                 ; preds = %land.lhs.true.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  call void %129(ptr noundef %link, ptr noundef nonnull %uart.i.i169) #8
  br label %if.end16.i.i197

if.end16.i.i197:                                  ; preds = %if.then13.i.i194, %land.lhs.true.i.i193.if.end16.i.i197_crit_edge, %if.end.i.i190.if.end16.i.i197_crit_edge
  %call.i.i195 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart.i.i169) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195)
  %cmp.i.i196 = icmp slt i32 %call.i.i195, 0
  br i1 %cmp.i.i196, label %do.end.i.i199, label %if.end19.i.i203

do.end.i.i199:                                    ; preds = %if.end16.i.i197
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i.i198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %115, i32 noundef %117) #12
  br label %setup_serial.exit.i204

if.end19.i.i203:                                  ; preds = %if.end16.i.i197
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i.i200 = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 1
  %130 = ptrtoint ptr %ndev.i.i200 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ndev.i.i200, align 4
  %arrayidx.i.i201 = getelementptr %struct.serial_info, ptr %92, i32 0, i32 7, i32 %131
  %132 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %call.i.i195, ptr %arrayidx.i.i201, align 4
  %133 = load i32, ptr %ndev.i.i200, align 4
  %inc.i.i202 = add i32 %133, 1
  store i32 %inc.i.i202, ptr %ndev.i.i200, align 4
  br label %setup_serial.exit.i204

setup_serial.exit.i204:                           ; preds = %if.end19.i.i203, %do.end.i.i199
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart.i.i169) #8
  %resource36.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %134 = ptrtoint ptr %resource36.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %resource36.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %138 = ptrtoint ptr %base2.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %base2.i, align 4
  br label %if.end45.i

if.else39.i:                                      ; preds = %if.then28.i
  %resource40.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %139 = ptrtoint ptr %resource40.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %resource40.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %143 = ptrtoint ptr %irq.i177 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %irq.i177, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart.i114.i) #8
  %145 = call ptr @memset(ptr %uart.i114.i, i32 0, i32 584)
  %iobase1.i115.i = getelementptr inbounds %struct.uart_port, ptr %uart.i114.i, i32 0, i32 1
  %146 = ptrtoint ptr %iobase1.i115.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %142, ptr %iobase1.i115.i, align 4
  %irq3.i116.i = getelementptr inbounds %struct.uart_port, ptr %uart.i114.i, i32 0, i32 20
  %147 = ptrtoint ptr %irq3.i116.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %144, ptr %irq3.i116.i, align 4
  %flags.i117.i = getelementptr inbounds %struct.uart_port, ptr %uart.i114.i, i32 0, i32 33
  %148 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 285212736, ptr %flags.i117.i, align 4
  %uartclk.i118.i = getelementptr inbounds %struct.uart_port, ptr %uart.i114.i, i32 0, i32 22
  %149 = ptrtoint ptr %uartclk.i118.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1843200, ptr %uartclk.i118.i, align 4
  %dev7.i120.i = getelementptr inbounds %struct.uart_port, ptr %uart.i114.i, i32 0, i32 45
  %150 = ptrtoint ptr %dev7.i120.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %dev70, ptr %dev7.i120.i, align 4
  %151 = load i32, ptr @buggy_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i121.i = icmp eq i32 %151, 0
  br i1 %tobool.not.i121.i, label %if.else39.i.if.end.i125.i_crit_edge, label %if.then.i122.i

if.else39.i.if.end.i125.i_crit_edge:              ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i125.i

if.then.i122.i:                                   ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 285229120, ptr %flags.i117.i, align 4
  br label %if.end.i125.i

if.end.i125.i:                                    ; preds = %if.then.i122.i, %if.else39.i.if.end.i125.i_crit_edge
  %153 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %quirk.i, align 4
  %tobool10.not.i124.i = icmp eq ptr %154, null
  br i1 %tobool10.not.i124.i, label %if.end.i125.i.if.end16.i132.i_crit_edge, label %land.lhs.true.i128.i

if.end.i125.i.if.end16.i132.i_crit_edge:          ; preds = %if.end.i125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i132.i

land.lhs.true.i128.i:                             ; preds = %if.end.i125.i
  %setup.i126.i = getelementptr inbounds %struct.serial_quirk, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %setup.i126.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %setup.i126.i, align 4
  %tobool12.not.i127.i = icmp eq ptr %156, null
  br i1 %tobool12.not.i127.i, label %land.lhs.true.i128.i.if.end16.i132.i_crit_edge, label %if.then13.i129.i

land.lhs.true.i128.i.if.end16.i132.i_crit_edge:   ; preds = %land.lhs.true.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i132.i

if.then13.i129.i:                                 ; preds = %land.lhs.true.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %156(ptr noundef %link, ptr noundef nonnull %uart.i114.i) #8
  br label %if.end16.i132.i

if.end16.i132.i:                                  ; preds = %if.then13.i129.i, %land.lhs.true.i128.i.if.end16.i132.i_crit_edge, %if.end.i125.i.if.end16.i132.i_crit_edge
  %call.i130.i = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart.i114.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %cmp.i131.i = icmp slt i32 %call.i130.i, 0
  br i1 %cmp.i131.i, label %do.end.i134.i, label %if.end19.i138.i

do.end.i134.i:                                    ; preds = %if.end16.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %142, i32 noundef %144) #12
  br label %setup_serial.exit140.i

if.end19.i138.i:                                  ; preds = %if.end16.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i135.i = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 1
  %157 = ptrtoint ptr %ndev.i135.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ndev.i135.i, align 4
  %arrayidx.i136.i = getelementptr %struct.serial_info, ptr %92, i32 0, i32 7, i32 %158
  %159 = ptrtoint ptr %arrayidx.i136.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call.i130.i, ptr %arrayidx.i136.i, align 4
  %160 = load i32, ptr %ndev.i135.i, align 4
  %inc.i137.i = add i32 %160, 1
  store i32 %inc.i137.i, ptr %ndev.i135.i, align 4
  br label %setup_serial.exit140.i

setup_serial.exit140.i:                           ; preds = %if.end19.i138.i, %do.end.i134.i
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart.i114.i) #8
  br label %if.end45.i

if.end45.i:                                       ; preds = %setup_serial.exit140.i, %setup_serial.exit.i204
  %161 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %base2.i, align 4
  %c950ctrl.i = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 6
  %163 = ptrtoint ptr %c950ctrl.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %c950ctrl.i, align 4
  %164 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %quirk.i, align 4
  %tobool47.not.i = icmp eq ptr %165, null
  br i1 %tobool47.not.i, label %if.end45.i.multi_config.exit_crit_edge, label %land.lhs.true48.i

if.end45.i.multi_config.exit_crit_edge:           ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %multi_config.exit

land.lhs.true48.i:                                ; preds = %if.end45.i
  %wakeup.i = getelementptr inbounds %struct.serial_quirk, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wakeup.i, align 4
  %tobool50.not.i = icmp eq ptr %167, null
  br i1 %tobool50.not.i, label %land.lhs.true48.i.multi_config.exit_crit_edge, label %if.then51.i

land.lhs.true48.i.multi_config.exit_crit_edge:    ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %multi_config.exit

if.then51.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %167(ptr noundef %link) #8
  br label %multi_config.exit

if.end55.i:                                       ; preds = %land.lhs.true26.i.if.end55.i_crit_edge, %if.end22.i.if.end55.i_crit_edge
  %resource56.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %168 = ptrtoint ptr %resource56.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %resource56.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %172 = ptrtoint ptr %irq.i177 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %irq.i177, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart.i141.i) #8
  %174 = call ptr @memset(ptr %uart.i141.i, i32 0, i32 584)
  %iobase1.i142.i = getelementptr inbounds %struct.uart_port, ptr %uart.i141.i, i32 0, i32 1
  %175 = ptrtoint ptr %iobase1.i142.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %171, ptr %iobase1.i142.i, align 4
  %irq3.i143.i = getelementptr inbounds %struct.uart_port, ptr %uart.i141.i, i32 0, i32 20
  %176 = ptrtoint ptr %irq3.i143.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %173, ptr %irq3.i143.i, align 4
  %flags.i144.i = getelementptr inbounds %struct.uart_port, ptr %uart.i141.i, i32 0, i32 33
  %177 = ptrtoint ptr %flags.i144.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 285212736, ptr %flags.i144.i, align 4
  %uartclk.i145.i = getelementptr inbounds %struct.uart_port, ptr %uart.i141.i, i32 0, i32 22
  %178 = ptrtoint ptr %uartclk.i145.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1843200, ptr %uartclk.i145.i, align 4
  %dev7.i147.i = getelementptr inbounds %struct.uart_port, ptr %uart.i141.i, i32 0, i32 45
  %179 = ptrtoint ptr %dev7.i147.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %dev70, ptr %dev7.i147.i, align 4
  %180 = load i32, ptr @buggy_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i148.i = icmp eq i32 %180, 0
  br i1 %tobool.not.i148.i, label %if.end55.i.if.end.i152.i_crit_edge, label %if.then.i149.i

if.end55.i.if.end.i152.i_crit_edge:               ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i152.i

if.then.i149.i:                                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %flags.i144.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 285229120, ptr %flags.i144.i, align 4
  br label %if.end.i152.i

if.end.i152.i:                                    ; preds = %if.then.i149.i, %if.end55.i.if.end.i152.i_crit_edge
  %182 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %quirk.i, align 4
  %tobool10.not.i151.i = icmp eq ptr %183, null
  br i1 %tobool10.not.i151.i, label %if.end.i152.i.if.end16.i159.i_crit_edge, label %land.lhs.true.i155.i

if.end.i152.i.if.end16.i159.i_crit_edge:          ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i159.i

land.lhs.true.i155.i:                             ; preds = %if.end.i152.i
  %setup.i153.i = getelementptr inbounds %struct.serial_quirk, ptr %183, i32 0, i32 4
  %184 = ptrtoint ptr %setup.i153.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %setup.i153.i, align 4
  %tobool12.not.i154.i = icmp eq ptr %185, null
  br i1 %tobool12.not.i154.i, label %land.lhs.true.i155.i.if.end16.i159.i_crit_edge, label %if.then13.i156.i

land.lhs.true.i155.i.if.end16.i159.i_crit_edge:   ; preds = %land.lhs.true.i155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i159.i

if.then13.i156.i:                                 ; preds = %land.lhs.true.i155.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %185(ptr noundef %link, ptr noundef nonnull %uart.i141.i) #8
  br label %if.end16.i159.i

if.end16.i159.i:                                  ; preds = %if.then13.i156.i, %land.lhs.true.i155.i.if.end16.i159.i_crit_edge, %if.end.i152.i.if.end16.i159.i_crit_edge
  %call.i157.i = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart.i141.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157.i)
  %cmp.i158.i = icmp slt i32 %call.i157.i, 0
  br i1 %cmp.i158.i, label %do.end.i161.i, label %if.end19.i165.i

do.end.i161.i:                                    ; preds = %if.end16.i159.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %171, i32 noundef %173) #12
  br label %setup_serial.exit167.i

if.end19.i165.i:                                  ; preds = %if.end16.i159.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i162.i = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 1
  %186 = ptrtoint ptr %ndev.i162.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ndev.i162.i, align 4
  %arrayidx.i163.i = getelementptr %struct.serial_info, ptr %92, i32 0, i32 7, i32 %187
  %188 = ptrtoint ptr %arrayidx.i163.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %call.i157.i, ptr %arrayidx.i163.i, align 4
  %189 = load i32, ptr %ndev.i162.i, align 4
  %inc.i164.i = add i32 %189, 1
  store i32 %inc.i164.i, ptr %ndev.i162.i, align 4
  br label %setup_serial.exit167.i

setup_serial.exit167.i:                           ; preds = %if.end19.i165.i, %do.end.i161.i
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart.i141.i) #8
  %190 = ptrtoint ptr %multi.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %multi.i, align 4
  %sub195.i = add i32 %191, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub195.i)
  %cmp62196.i = icmp sgt i32 %sub195.i, 0
  br i1 %cmp62196.i, label %for.body.lr.ph.i, label %setup_serial.exit167.i.multi_config.exit_crit_edge

setup_serial.exit167.i.multi_config.exit_crit_edge: ; preds = %setup_serial.exit167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %multi_config.exit

for.body.lr.ph.i:                                 ; preds = %setup_serial.exit167.i
  %iobase1.i169.i = getelementptr inbounds %struct.uart_port, ptr %uart.i168.i, i32 0, i32 1
  %irq3.i170.i = getelementptr inbounds %struct.uart_port, ptr %uart.i168.i, i32 0, i32 20
  %flags.i171.i = getelementptr inbounds %struct.uart_port, ptr %uart.i168.i, i32 0, i32 33
  %uartclk.i172.i = getelementptr inbounds %struct.uart_port, ptr %uart.i168.i, i32 0, i32 22
  %dev7.i174.i = getelementptr inbounds %struct.uart_port, ptr %uart.i168.i, i32 0, i32 45
  %ndev.i189.i = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %setup_serial.exit194.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0197.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %setup_serial.exit194.i.for.body.i_crit_edge ]
  %192 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %base2.i, align 4
  %mul.i = shl i32 %i.0197.i, 3
  %add63.i = add i32 %193, %mul.i
  %194 = ptrtoint ptr %irq.i177 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %irq.i177, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart.i168.i) #8
  %196 = call ptr @memset(ptr %uart.i168.i, i32 0, i32 584)
  %197 = ptrtoint ptr %iobase1.i169.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %add63.i, ptr %iobase1.i169.i, align 4
  %198 = ptrtoint ptr %irq3.i170.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %195, ptr %irq3.i170.i, align 4
  %199 = ptrtoint ptr %flags.i171.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 285212736, ptr %flags.i171.i, align 4
  %200 = ptrtoint ptr %uartclk.i172.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1843200, ptr %uartclk.i172.i, align 4
  %201 = ptrtoint ptr %dev7.i174.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %dev70, ptr %dev7.i174.i, align 4
  %202 = load i32, ptr @buggy_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.not.i175.i = icmp eq i32 %202, 0
  br i1 %tobool.not.i175.i, label %for.body.i.if.end.i179.i_crit_edge, label %if.then.i176.i

for.body.i.if.end.i179.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i179.i

if.then.i176.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %flags.i171.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 285229120, ptr %flags.i171.i, align 4
  br label %if.end.i179.i

if.end.i179.i:                                    ; preds = %if.then.i176.i, %for.body.i.if.end.i179.i_crit_edge
  %204 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %quirk.i, align 4
  %tobool10.not.i178.i = icmp eq ptr %205, null
  br i1 %tobool10.not.i178.i, label %if.end.i179.i.if.end16.i186.i_crit_edge, label %land.lhs.true.i182.i

if.end.i179.i.if.end16.i186.i_crit_edge:          ; preds = %if.end.i179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i186.i

land.lhs.true.i182.i:                             ; preds = %if.end.i179.i
  %setup.i180.i = getelementptr inbounds %struct.serial_quirk, ptr %205, i32 0, i32 4
  %206 = ptrtoint ptr %setup.i180.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %setup.i180.i, align 4
  %tobool12.not.i181.i = icmp eq ptr %207, null
  br i1 %tobool12.not.i181.i, label %land.lhs.true.i182.i.if.end16.i186.i_crit_edge, label %if.then13.i183.i

land.lhs.true.i182.i.if.end16.i186.i_crit_edge:   ; preds = %land.lhs.true.i182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i186.i

if.then13.i183.i:                                 ; preds = %land.lhs.true.i182.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %207(ptr noundef %link, ptr noundef nonnull %uart.i168.i) #8
  br label %if.end16.i186.i

if.end16.i186.i:                                  ; preds = %if.then13.i183.i, %land.lhs.true.i182.i.if.end16.i186.i_crit_edge, %if.end.i179.i.if.end16.i186.i_crit_edge
  %call.i184.i = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart.i168.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184.i)
  %cmp.i185.i = icmp slt i32 %call.i184.i, 0
  br i1 %cmp.i185.i, label %do.end.i188.i, label %if.end19.i192.i

do.end.i188.i:                                    ; preds = %if.end16.i186.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %add63.i, i32 noundef %195) #12
  br label %setup_serial.exit194.i

if.end19.i192.i:                                  ; preds = %if.end16.i186.i
  call void @__sanitizer_cov_trace_pc() #10
  %208 = ptrtoint ptr %ndev.i189.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %ndev.i189.i, align 4
  %arrayidx.i190.i = getelementptr %struct.serial_info, ptr %92, i32 0, i32 7, i32 %209
  %210 = ptrtoint ptr %arrayidx.i190.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %call.i184.i, ptr %arrayidx.i190.i, align 4
  %211 = load i32, ptr %ndev.i189.i, align 4
  %inc.i191.i = add i32 %211, 1
  store i32 %inc.i191.i, ptr %ndev.i189.i, align 4
  br label %setup_serial.exit194.i

setup_serial.exit194.i:                           ; preds = %if.end19.i192.i, %do.end.i188.i
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart.i168.i) #8
  %inc.i = add nuw nsw i32 %i.0197.i, 1
  %212 = ptrtoint ptr %multi.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %multi.i, align 4
  %sub.i = add i32 %213, -1
  %cmp62.i = icmp slt i32 %inc.i, %sub.i
  br i1 %cmp62.i, label %setup_serial.exit194.i.for.body.i_crit_edge, label %setup_serial.exit194.i.multi_config.exit_crit_edge

setup_serial.exit194.i.multi_config.exit_crit_edge: ; preds = %setup_serial.exit194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %multi_config.exit

setup_serial.exit194.i.for.body.i_crit_edge:      ; preds = %setup_serial.exit194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

multi_config.exit:                                ; preds = %setup_serial.exit194.i.multi_config.exit_crit_edge, %setup_serial.exit167.i.multi_config.exit_crit_edge, %if.then51.i, %land.lhs.true48.i.multi_config.exit_crit_edge, %if.end45.i.multi_config.exit_crit_edge, %if.end19.i.multi_config.exit_crit_edge, %do.end.i176
  %retval.0.i205 = phi i32 [ -19, %do.end.i176 ], [ -19, %if.end19.i.multi_config.exit_crit_edge ], [ 0, %if.then51.i ], [ 0, %land.lhs.true48.i.multi_config.exit_crit_edge ], [ 0, %if.end45.i.multi_config.exit_crit_edge ], [ 0, %setup_serial.exit167.i.multi_config.exit_crit_edge ], [ 0, %setup_serial.exit194.i.multi_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base2.i) #8
  br label %if.end93

if.else90:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %try.i) #8
  %config_flags.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %214 = ptrtoint ptr %config_flags.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %config_flags.i, align 4
  %or.i = or i32 %215, 512
  store i32 %or.i, ptr %config_flags.i, align 4
  %216 = ptrtoint ptr %try.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %try.i, align 4
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.inc.i.for.body.i210_crit_edge, %if.else90
  %call.i208 = call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @simple_config_check, ptr noundef nonnull %try.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool.not.i209 = icmp eq i32 %call.i208, 0
  br i1 %tobool.not.i209, label %for.body.i210.found_port.i_crit_edge, label %for.inc.i

for.body.i210.found_port.i_crit_edge:             ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %found_port.i

for.inc.i:                                        ; preds = %for.body.i210
  %217 = ptrtoint ptr %try.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %try.i, align 4
  %inc.i211 = add i32 %218, 1
  store i32 %inc.i211, ptr %try.i, align 4
  %cmp.i = icmp slt i32 %inc.i211, 4
  br i1 %cmp.i, label %for.inc.i.for.body.i210_crit_edge, label %for.end.i

for.inc.i.for.body.i210_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i210

for.end.i:                                        ; preds = %for.inc.i
  %call1.i = call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @simple_config_check_notpicky, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.end.i.found_port.i_crit_edge, label %do.end.i213

for.end.i.found_port.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %found_port.i

do.end.i213:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev70, ptr noundef nonnull @.str.13) #12
  br label %simple_config.exit

found_port.i:                                     ; preds = %for.end.i.found_port.i_crit_edge, %for.body.i210.found_port.i_crit_edge
  %multi.i214 = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 2
  %219 = ptrtoint ptr %multi.i214 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %multi.i214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool5.not.i = icmp eq i32 %220, 0
  br i1 %tobool5.not.i, label %found_port.i.if.end8.i_crit_edge, label %land.lhs.true.i217

found_port.i.if.end8.i_crit_edge:                 ; preds = %found_port.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

land.lhs.true.i217:                               ; preds = %found_port.i
  %manfid.i215 = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 4
  %221 = ptrtoint ptr %manfid.i215 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %manfid.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %222)
  %cmp6.i216 = icmp eq i32 %222, 257
  br i1 %cmp6.i216, label %if.then7.i, label %land.lhs.true.i217.if.end8.i_crit_edge

land.lhs.true.i217.if.end8.i_crit_edge:           ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then7.i:                                       ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #10
  %config_index.i218 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %223 = ptrtoint ptr %config_index.i218 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %config_index.i218, align 4
  %and.i = and i32 %224, -9
  store i32 %and.i, ptr %config_index.i218, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %land.lhs.true.i217.if.end8.i_crit_edge, %found_port.i.if.end8.i_crit_edge
  %quirk.i219 = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 8
  %225 = ptrtoint ptr %quirk.i219 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %quirk.i219, align 4
  %tobool9.not.i = icmp eq ptr %226, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end16.i_crit_edge, label %land.lhs.true10.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true10.i:                                ; preds = %if.end8.i
  %config.i220 = getelementptr inbounds %struct.serial_quirk, ptr %226, i32 0, i32 3
  %227 = ptrtoint ptr %config.i220 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %config.i220, align 4
  %tobool12.not.i = icmp eq ptr %228, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.end16.i_crit_edge, label %if.then13.i

land.lhs.true10.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then13.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %228(ptr noundef %link) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %land.lhs.true10.i.if.end16.i_crit_edge, %if.end8.i.if.end16.i_crit_edge
  %call17.i = call i32 @pcmcia_enable_device(ptr noundef %link) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.not.i = icmp eq i32 %call17.i, 0
  br i1 %cmp18.not.i, label %if.end20.i, label %if.end16.i.simple_config.exit_crit_edge

if.end16.i.simple_config.exit_crit_edge:          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %simple_config.exit

if.end20.i:                                       ; preds = %if.end16.i
  %resource.i221 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %229 = ptrtoint ptr %resource.i221 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %resource.i221, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 4
  %irq.i222 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %233 = ptrtoint ptr %irq.i222 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %irq.i222, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart.i.i206) #8
  %235 = call ptr @memset(ptr %uart.i.i206, i32 0, i32 584)
  %iobase1.i.i223 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i206, i32 0, i32 1
  %236 = ptrtoint ptr %iobase1.i.i223 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %232, ptr %iobase1.i.i223, align 4
  %irq3.i.i224 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i206, i32 0, i32 20
  %237 = ptrtoint ptr %irq3.i.i224 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %234, ptr %irq3.i.i224, align 4
  %flags.i.i225 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i206, i32 0, i32 33
  %238 = ptrtoint ptr %flags.i.i225 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 285212736, ptr %flags.i.i225, align 4
  %uartclk.i.i226 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i206, i32 0, i32 22
  %239 = ptrtoint ptr %uartclk.i.i226 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 1843200, ptr %uartclk.i.i226, align 4
  %dev7.i.i228 = getelementptr inbounds %struct.uart_port, ptr %uart.i.i206, i32 0, i32 45
  %240 = ptrtoint ptr %dev7.i.i228 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %dev70, ptr %dev7.i.i228, align 4
  %241 = load i32, ptr @buggy_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not.i.i229 = icmp eq i32 %241, 0
  br i1 %tobool.not.i.i229, label %if.end20.i.if.end.i.i232_crit_edge, label %if.then.i.i230

if.end20.i.if.end.i.i232_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i232

if.then.i.i230:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %242 = ptrtoint ptr %flags.i.i225 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 285229120, ptr %flags.i.i225, align 4
  br label %if.end.i.i232

if.end.i.i232:                                    ; preds = %if.then.i.i230, %if.end20.i.if.end.i.i232_crit_edge
  %243 = ptrtoint ptr %quirk.i219 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %quirk.i219, align 4
  %tobool10.not.i.i231 = icmp eq ptr %244, null
  br i1 %tobool10.not.i.i231, label %if.end.i.i232.if.end16.i.i239_crit_edge, label %land.lhs.true.i.i235

if.end.i.i232.if.end16.i.i239_crit_edge:          ; preds = %if.end.i.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i239

land.lhs.true.i.i235:                             ; preds = %if.end.i.i232
  %setup.i.i233 = getelementptr inbounds %struct.serial_quirk, ptr %244, i32 0, i32 4
  %245 = ptrtoint ptr %setup.i.i233 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %setup.i.i233, align 4
  %tobool12.not.i.i234 = icmp eq ptr %246, null
  br i1 %tobool12.not.i.i234, label %land.lhs.true.i.i235.if.end16.i.i239_crit_edge, label %if.then13.i.i236

land.lhs.true.i.i235.if.end16.i.i239_crit_edge:   ; preds = %land.lhs.true.i.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i239

if.then13.i.i236:                                 ; preds = %land.lhs.true.i.i235
  call void @__sanitizer_cov_trace_pc() #10
  call void %246(ptr noundef %link, ptr noundef nonnull %uart.i.i206) #8
  br label %if.end16.i.i239

if.end16.i.i239:                                  ; preds = %if.then13.i.i236, %land.lhs.true.i.i235.if.end16.i.i239_crit_edge, %if.end.i.i232.if.end16.i.i239_crit_edge
  %call.i.i237 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart.i.i206) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i237)
  %cmp.i.i238 = icmp slt i32 %call.i.i237, 0
  br i1 %cmp.i.i238, label %do.end.i.i241, label %if.end19.i.i245

do.end.i.i241:                                    ; preds = %if.end16.i.i239
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i.i240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %232, i32 noundef %234) #12
  br label %setup_serial.exit.i247

if.end19.i.i245:                                  ; preds = %if.end16.i.i239
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i.i242 = getelementptr inbounds %struct.serial_info, ptr %92, i32 0, i32 1
  %247 = ptrtoint ptr %ndev.i.i242 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %ndev.i.i242, align 4
  %arrayidx.i.i243 = getelementptr %struct.serial_info, ptr %92, i32 0, i32 7, i32 %248
  %249 = ptrtoint ptr %arrayidx.i.i243 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %call.i.i237, ptr %arrayidx.i.i243, align 4
  %250 = load i32, ptr %ndev.i.i242, align 4
  %inc.i.i244 = add i32 %250, 1
  store i32 %inc.i.i244, ptr %ndev.i.i242, align 4
  br label %setup_serial.exit.i247

setup_serial.exit.i247:                           ; preds = %if.end19.i.i245, %do.end.i.i241
  %retval.0.i.i246 = phi i32 [ -22, %do.end.i.i241 ], [ 0, %if.end19.i.i245 ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart.i.i206) #8
  br label %simple_config.exit

simple_config.exit:                               ; preds = %setup_serial.exit.i247, %if.end16.i.simple_config.exit_crit_edge, %do.end.i213
  %retval.0.i248 = phi i32 [ %retval.0.i.i246, %setup_serial.exit.i247 ], [ %call1.i, %do.end.i213 ], [ %call17.i, %if.end16.i.simple_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %try.i) #8
  br label %if.end93

if.end93:                                         ; preds = %simple_config.exit, %multi_config.exit, %setup_serial.exit.i
  %i.1 = phi i32 [ %retval.0.i205, %multi_config.exit ], [ %retval.0.i248, %simple_config.exit ], [ %retval.0.i.i, %setup_serial.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool94.not = icmp eq i32 %i.1, 0
  br i1 %tobool94.not, label %lor.lhs.false95, label %if.end93.do.end115_crit_edge

if.end93.do.end115_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115

lor.lhs.false95:                                  ; preds = %if.end93
  %ndev = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 1
  %251 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %ndev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp96 = icmp eq i32 %252, 0
  br i1 %cmp96, label %lor.lhs.false95.do.end115_crit_edge, label %if.end99

lor.lhs.false95.do.end115_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115

if.end99:                                         ; preds = %lor.lhs.false95
  %253 = ptrtoint ptr %quirk55 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %quirk55, align 4
  %tobool101.not = icmp eq ptr %254, null
  br i1 %tobool101.not, label %if.end99.cleanup_crit_edge, label %land.lhs.true102

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true102:                                 ; preds = %if.end99
  %post = getelementptr inbounds %struct.serial_quirk, ptr %254, i32 0, i32 6
  %255 = ptrtoint ptr %post to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %post, align 4
  %tobool104.not = icmp eq ptr %256, null
  br i1 %tobool104.not, label %land.lhs.true102.cleanup_crit_edge, label %if.then105

land.lhs.true102.cleanup_crit_edge:               ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then105:                                       ; preds = %land.lhs.true102
  %call108 = call i32 %256(ptr noundef %link) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then105.cleanup_crit_edge, label %if.then105.do.end115_crit_edge

if.then105.do.end115_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end115:                                        ; preds = %if.then105.do.end115_crit_edge, %lor.lhs.false95.do.end115_crit_edge, %if.end93.do.end115_crit_edge, %if.end93.thread, %if.then49.do.end115_crit_edge
  %dev116 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev116, ptr noundef nonnull @.str.10) #12
  %257 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_remove.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_config, %if.then.i251)) #8
          to label %do.end.i252 [label %if.then.i251], !srcloc !360

if.then.i251:                                     ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_remove.__UNIQUE_ID_ddebug244, ptr noundef %dev116, ptr noundef nonnull @.str.23) #8
  br label %do.end.i252

do.end.i252:                                      ; preds = %if.then.i251, %do.end115
  %ndev.i = getelementptr inbounds %struct.serial_info, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %ndev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %cmp13.i = icmp sgt i32 %260, 0
  br i1 %cmp13.i, label %do.end.i252.for.body.i256_crit_edge, label %do.end.i252.for.end.i258_crit_edge

do.end.i252.for.end.i258_crit_edge:               ; preds = %do.end.i252
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i258

do.end.i252.for.body.i256_crit_edge:              ; preds = %do.end.i252
  br label %for.body.i256

for.body.i256:                                    ; preds = %for.body.i256.for.body.i256_crit_edge, %do.end.i252.for.body.i256_crit_edge
  %i.014.i = phi i32 [ %inc.i254, %for.body.i256.for.body.i256_crit_edge ], [ 0, %do.end.i252.for.body.i256_crit_edge ]
  %arrayidx.i253 = getelementptr %struct.serial_info, ptr %258, i32 0, i32 7, i32 %i.014.i
  %261 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx.i253, align 4
  call void @serial8250_unregister_port(i32 noundef %262) #8
  %inc.i254 = add nuw nsw i32 %i.014.i, 1
  %263 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %ndev.i, align 4
  %cmp.i255 = icmp slt i32 %inc.i254, %264
  br i1 %cmp.i255, label %for.body.i256.for.body.i256_crit_edge, label %for.body.i256.for.end.i258_crit_edge

for.body.i256.for.end.i258_crit_edge:             ; preds = %for.body.i256
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i258

for.body.i256.for.body.i256_crit_edge:            ; preds = %for.body.i256
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i256

for.end.i258:                                     ; preds = %for.body.i256.for.end.i258_crit_edge, %do.end.i252.for.end.i258_crit_edge
  %slave.i = getelementptr inbounds %struct.serial_info, ptr %258, i32 0, i32 3
  %265 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %slave.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool3.not.i257 = icmp eq i32 %266, 0
  br i1 %tobool3.not.i257, label %if.then4.i, label %for.end.i258.cleanup_crit_edge

for.end.i258.cleanup_crit_edge:                   ; preds = %for.end.i258
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i:                                       ; preds = %for.end.i258
  call void @__sanitizer_cov_trace_pc() #10
  call void @pcmcia_disable_device(ptr noundef %link) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %for.end.i258.cleanup_crit_edge, %if.then105.cleanup_crit_edge, %land.lhs.true102.cleanup_crit_edge, %if.end99.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then105.cleanup_crit_edge ], [ 0, %land.lhs.true102.cleanup_crit_edge ], [ 0, %if.end99.cleanup_crit_edge ], [ -19, %for.end.i258.cleanup_crit_edge ], [ -19, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @serial_check_for_multi(ptr nocapture noundef readonly %p_dev, ptr nocapture noundef readnone %priv_data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %end3 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %end3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %rem = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %or.cond = select i1 %tobool4.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then8, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %5, 3
  %multi = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %multi, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2, align 4
  %end15 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %end15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %land.lhs.true17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.end12
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %end20 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %end20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp21 = icmp eq i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp26 = icmp eq i32 %14, 8
  %or.cond39 = select i1 %cmp21, i1 %cmp26, i1 false
  br i1 %or.cond39, label %if.then27, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  %multi28 = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %multi28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %multi28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %land.lhs.true17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @quirk_setup_brainboxes_0104(ptr nocapture noundef readnone %link, ptr nocapture noundef writeonly %uart) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 14745600, ptr %uartclk, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirk_post_ibm(ptr noundef %link) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !361
  %call = call i32 @pcmcia_read_config_byte(ptr noundef %link, i32 noundef 2048, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.failed_crit_edge

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = or i8 %2, 1
  %call2 = call i32 @pcmcia_write_config_byte(ptr noundef %link, i32 noundef 2048, i8 noundef zeroext %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.failed_crit_edge

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

failed:                                           ; preds = %if.end.failed_crit_edge, %entry.failed_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %failed ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @quirk_config_nokia(ptr nocapture noundef readonly %link) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %multi = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %multi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quirk_wakeup_oxsemi(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %c950ctrl = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %c950ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c950ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !362
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %c950ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c950ctrl, align 4
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 12) #8, !srcloc !363
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quirk_wakeup_possio_gcc(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %c950ctrl = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %c950ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c950ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !364
  tail call void @arm_heavy_mb() #8
  %add = add i32 %3, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 10) #8, !srcloc !363
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !365
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 14) #8, !srcloc !363
  tail call void @msleep(i32 noundef 300) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !366
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 12) #8, !srcloc !363
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !367
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 14) #8, !srcloc !363
  tail call void @msleep(i32 noundef 200) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 15) #8, !srcloc !363
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 14) #8, !srcloc !363
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !370
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 12) #8, !srcloc !363
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @quirk_config_socket(ptr nocapture noundef %link) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %multi = getelementptr inbounds %struct.serial_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %4 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config_flags, align 4
  %or = or i32 %5, 8
  store i32 %or, ptr %config_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_config_check(ptr noundef %p_dev, ptr nocapture noundef readonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %end3 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp = icmp ult i32 %7, 9
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, -25
  store i32 %and, ptr %flags, align 4
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %12 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %priv_data, align 4
  %mul = shl i32 %13, 3
  %end13 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %end13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %end13, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  %. = select i1 %tobool14.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_config_check_notpicky(ptr noundef %p_dev, ptr nocapture noundef writeonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %end3 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %add = add i32 %9, 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp.not = icmp eq i32 %add, %11
  br i1 %cmp.not, label %if.end, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %12 = ptrtoint ptr %end3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %end3, align 4
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resource, align 4
  %end16 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %end16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %end16, align 4
  %16 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, -25
  store i32 %and, ptr %flags, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add28 = add i32 %22, 8
  %23 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add28, ptr %priv_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -19, %lor.lhs.false5.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_config_check(ptr noundef %p_dev, ptr nocapture noundef readonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv_data, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %6 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %io_lines, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  %9 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priv_data, align 4
  %shr = ashr i32 %10, 1
  %arrayidx6 = getelementptr [2 x i32], ptr @simple_config_check.size_table, i32 0, i32 %shr
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp7.not = icmp eq i32 %8, %12
  br i1 %cmp7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %end, align 4
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and15 = and i32 %17, -25
  store i32 %and15, ptr %flags, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_config_check_notpicky(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %0 = ptrtoint ptr %io_lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -25
  store i32 %and, ptr %flags, align 4
  %6 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %end, align 4
  %8 = load ptr, ptr %resource, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1016, ptr %8, align 4
  %10 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %io_lines, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 760, ptr %12, align 4
  %14 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %io_lines, align 4
  %call.1 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool12.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool12.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1000, ptr %16, align 4
  %18 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %io_lines, align 4
  %call.2 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool12.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool12.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 744, ptr %20, align 4
  %22 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %io_lines, align 4
  %call.3 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool12.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool12.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %26 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %io_lines, align 4
  %call.4 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool12.not.4 = icmp eq i32 %call.4, 0
  %spec.select = select i1 %tobool12.not.4, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %for.cond.3, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ %spec.select, %for.cond.3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !109, !111, !113, !114, !116, !118, !120, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !156, !157, !159, !161, !162, !164, !166, !167, !168, !170, !171, !173, !175, !177, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !202, !204, !205, !207, !208, !210, !212, !213, !215, !216, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !240, !241, !243, !244, !246, !248, !249, !251, !253, !255, !256, !258, !260, !261, !262, !264, !266, !267, !269, !271, !273, !275, !276, !277, !279, !281, !283, !285, !286, !287, !289, !291, !292, !294, !296, !297, !298, !300, !301, !302, !304, !305, !307, !309, !310, !312, !313, !315, !317, !319, !321, !322, !324, !326, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349}
!llvm.module.flags = !{!351, !352, !353, !354, !355, !356, !357, !358}
!llvm.ident = !{!359}

!0 = !{ptr @__param_do_sound, !1, !"__param_do_sound", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 64, i32 1}
!2 = !{ptr @__UNIQUE_ID_do_soundtype242, !1, !"__UNIQUE_ID_do_soundtype242", i1 false, i1 false}
!3 = !{ptr @__param_buggy_uart, !4, !"__param_buggy_uart", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 65, i32 1}
!5 = !{ptr @__UNIQUE_ID_buggy_uarttype243, !4, !"__UNIQUE_ID_buggy_uarttype243", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_firmware248, !7, !"__UNIQUE_ID_firmware248", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 850, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware249, !9, !"__UNIQUE_ID_firmware249", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 851, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware250, !11, !"__UNIQUE_ID_firmware250", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 852, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware251, !13, !"__UNIQUE_ID_firmware251", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 853, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware252, !15, !"__UNIQUE_ID_firmware252", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 854, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware253, !17, !"__UNIQUE_ID_firmware253", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 855, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware254, !19, !"__UNIQUE_ID_firmware254", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 856, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware255, !21, !"__UNIQUE_ID_firmware255", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 857, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware256, !23, !"__UNIQUE_ID_firmware256", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 858, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware257, !25, !"__UNIQUE_ID_firmware257", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 859, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware258, !27, !"__UNIQUE_ID_firmware258", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 860, i32 1}
!28 = !{ptr @__initcall__kmod_serial_cs__259_871_serial_cs_driver_init6, !29, !"__initcall__kmod_serial_cs__259_871_serial_cs_driver_init6", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 871, i32 1}
!30 = !{ptr @__exitcall_serial_cs_driver_exit, !29, !"__exitcall_serial_cs_driver_exit", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_file260, !32, !"__UNIQUE_ID_file260", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 873, i32 1}
!33 = !{ptr @__UNIQUE_ID_license261, !32, !"__UNIQUE_ID_license261", i1 false, i1 false}
!34 = !{ptr @buggy_uart, !35, !"buggy_uart", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 62, i32 12}
!36 = !{ptr @__param_str_do_sound, !1, !"__param_str_do_sound", i1 false, i1 false}
!37 = !{ptr @do_sound, !38, !"do_sound", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 60, i32 12}
!39 = !{ptr @__param_str_buggy_uart, !4, !"__param_str_buggy_uart", i1 false, i1 false}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 864, i32 11}
!42 = !{ptr @serial_cs_driver, !43, !"serial_cs_driver", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 862, i32 29}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 311, i32 2}
!46 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @serial_probe.__UNIQUE_ID_ddebug245, !45, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!49 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 621, i32 2}
!51 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @serial_config.__UNIQUE_ID_ddebug247, !50, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 658, i32 2}
!55 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @serial_config._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @serial_config._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 683, i32 2}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @serial_config._entry.9, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @serial_config._entry_ptr.12, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @quirks, !65, !"quirks", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 188, i32 34}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 402, i32 2}
!68 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pfc_config._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @pfc_config._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 372, i32 3}
!73 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @setup_serial._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @setup_serial._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 546, i32 4}
!78 = !{ptr @multi_config._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @multi_config._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 553, i32 3}
!82 = !{ptr @multi_config._entry.18, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @multi_config._entry_ptr.20, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 470, i32 3}
!86 = !{ptr @simple_config._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @simple_config._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @simple_config_check.size_table, !89, !"size_table", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 408, i32 19}
!90 = distinct !{null, !91, !"base", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 430, i32 28}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 269, i32 2}
!94 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @serial_remove.__UNIQUE_ID_ddebug244, !93, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!96 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 339, i32 2}
!98 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @serial_detach.__UNIQUE_ID_ddebug246, !97, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!100 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 703, i32 2}
!102 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 704, i32 2}
!106 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 705, i32 2}
!108 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 706, i32 2}
!111 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 707, i32 2}
!113 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 708, i32 2}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 709, i32 2}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 710, i32 2}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 711, i32 2}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 712, i32 2}
!124 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 713, i32 2}
!127 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 714, i32 2}
!130 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 715, i32 2}
!133 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 716, i32 2}
!136 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 717, i32 2}
!139 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 718, i32 2}
!142 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 720, i32 2}
!145 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 721, i32 2}
!148 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 722, i32 2}
!151 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 723, i32 2}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 724, i32 2}
!156 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 725, i32 2}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 726, i32 2}
!161 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 727, i32 2}
!164 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 736, i32 2}
!166 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 737, i32 2}
!170 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 738, i32 2}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 739, i32 2}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 740, i32 2}
!177 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 741, i32 2}
!179 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 766, i32 2}
!181 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 767, i32 2}
!185 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 769, i32 2}
!188 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 770, i32 2}
!191 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 771, i32 2}
!195 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 772, i32 2}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 773, i32 2}
!201 = !{ptr @.str.90, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 774, i32 2}
!204 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 775, i32 2}
!207 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 776, i32 2}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 777, i32 2}
!212 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 778, i32 2}
!215 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 779, i32 2}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 780, i32 2}
!220 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 781, i32 2}
!223 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.105, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 782, i32 2}
!226 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 783, i32 2}
!229 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 784, i32 2}
!232 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 785, i32 2}
!235 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 786, i32 2}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 787, i32 2}
!240 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 788, i32 2}
!243 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 789, i32 2}
!246 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 790, i32 2}
!248 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 791, i32 2}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 792, i32 2}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 793, i32 2}
!255 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.125, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 794, i32 2}
!258 = !{ptr @.str.126, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 795, i32 2}
!260 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.129, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 796, i32 2}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 797, i32 2}
!266 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 798, i32 2}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 799, i32 2}
!271 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 800, i32 2}
!273 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 801, i32 2}
!275 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 802, i32 2}
!279 = !{ptr @.str.139, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 803, i32 2}
!281 = !{ptr @.str.140, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 805, i32 2}
!283 = !{ptr @.str.141, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 807, i32 2}
!285 = !{ptr @.str.142, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.143, !284, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.144, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 808, i32 2}
!289 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 809, i32 2}
!291 = !{ptr @.str.146, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.147, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 810, i32 2}
!294 = !{ptr @.str.148, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 812, i32 2}
!296 = !{ptr @.str.149, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.150, !295, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.151, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 813, i32 2}
!300 = !{ptr @.str.152, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.153, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.154, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 814, i32 2}
!304 = !{ptr @.str.155, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.156, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 815, i32 2}
!307 = !{ptr @.str.157, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 816, i32 2}
!309 = !{ptr @.str.158, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.159, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 817, i32 2}
!312 = !{ptr @.str.160, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.161, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 818, i32 2}
!315 = !{ptr @.str.162, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 819, i32 2}
!317 = !{ptr @.str.163, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 820, i32 2}
!319 = !{ptr @.str.164, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 821, i32 2}
!321 = !{ptr @.str.165, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.166, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 822, i32 2}
!324 = !{ptr @.str.167, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 823, i32 2}
!326 = !{ptr @.str.168, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.169, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 824, i32 2}
!329 = !{ptr @.str.170, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 825, i32 2}
!331 = !{ptr @.str.171, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 826, i32 2}
!333 = !{ptr @.str.172, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 827, i32 2}
!335 = !{ptr @.str.173, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 828, i32 2}
!337 = !{ptr @.str.174, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 829, i32 2}
!339 = !{ptr @.str.175, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 830, i32 2}
!341 = !{ptr @.str.176, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 831, i32 2}
!343 = !{ptr @.str.177, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 832, i32 2}
!345 = !{ptr @.str.178, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 833, i32 2}
!347 = !{ptr @.str.179, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 834, i32 2}
!349 = !{ptr @serial_ids, !350, !"serial_ids", i1 false, i1 false}
!350 = !{!"../drivers/tty/serial/8250/serial_cs.c", i32 688, i32 38}
!351 = !{i32 1, !"wchar_size", i32 2}
!352 = !{i32 1, !"min_enum_size", i32 4}
!353 = !{i32 8, !"branch-target-enforcement", i32 0}
!354 = !{i32 8, !"sign-return-address", i32 0}
!355 = !{i32 8, !"sign-return-address-all", i32 0}
!356 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!357 = !{i32 7, !"uwtable", i32 1}
!358 = !{i32 7, !"frame-pointer", i32 2}
!359 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!360 = !{i64 2148981639, i64 2148981644, i64 2148981657, i64 2148981701, i64 2148981735, i64 2148981756}
!361 = !{!"auto-init"}
!362 = !{i64 2154975390}
!363 = !{i64 6204149}
!364 = !{i64 2154975726}
!365 = !{i64 2154976052}
!366 = !{i64 2154976378}
!367 = !{i64 2154976704}
!368 = !{i64 2154977030}
!369 = !{i64 2154977356}
!370 = !{i64 2154977682}
