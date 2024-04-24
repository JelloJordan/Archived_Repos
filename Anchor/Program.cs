using OpenTK.Mathematics;
using OpenTK.Windowing.Common;
using OpenTK.Windowing.Desktop;

namespace Anchor
{
    public static class Program
    {
        private static void Main()
        {
            NativeWindowSettings defaultWindowSettings = new NativeWindowSettings()
            {
                ClientSize = new Vector2i(1280, 720),
                Title = "Window",
            };

            using (Window window = new Window(GameWindowSettings.Default, defaultWindowSettings))
            {
                window.Run();
            }

        }
    }
}